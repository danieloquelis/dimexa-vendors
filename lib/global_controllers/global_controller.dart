
import 'dart:async';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_widgets/loading_dialog/loading_dialog.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class GlobalController extends GetxController {
  ///Injections
  final clientInterceptor = Get.find<ClientInterceptor>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientRepository = Get.find<ClientRepository>();

  ///Private variables
  final List<AppPermission> _filteredPermissions = [];
  late Vendor _currentVendor;
  late Session _session;
  late String _selectedZoneId = "";
  final RxDouble _progressValue = 0.0.obs;

  ///Local used variables
  bool isLoadingDialogOn = false;

  ///Getters
  Vendor get currentVendor => _currentVendor;
  List<AppPermission> get filteredPermissions => _filteredPermissions;
  Session get session => _session;
  String get selectedZoneId => _selectedZoneId;
  RxDouble get progressValue => _progressValue;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  @override
  void onReady() async {
    super.onReady();
    //check session prohibited access
    //if its yes -> close the app

    //filter list of permissions based on current status
    await filterPermissions();
  }


  Future<void> filterPermissions() async {
    //build list of permissions
    for (AppPermission permission in requiredPermissions) {
      //filteredPermissions = use permissionRequired to check the status of the permissions and filter
      //check if permission has been negated or it has not been requested yet.
      PermissionStatus status = await permission.permissionType.status;
      if (status.isDenied) {
        _filteredPermissions.add(permission);
      }
    }
  }

  void setSession(Session session) {
    _session = session;
    if (session.zones.isNotEmpty) {
      _selectedZoneId = StringUtils.checkNullOrEmpty(session.zones.first.zonaid);
    }
    
  }

  void setVendor(Vendor vendor) {
    _currentVendor = vendor;
  }

  void showLoadingDialog({String? message}) {
    if (isLoadingDialogOn) {
      isLoadingDialogOn = false;
      Get.back();
    }

    isLoadingDialogOn = true;
    LoadingDialog.showDialog(context: Get.overlayContext!, message: message);
  }

  Future hideLoadingDialog({String? errorMessage}) async {
    if (StringUtils.isNotNullNorEmpty(errorMessage)) {
      if (isLoadingDialogOn) {
        //Dismiss the current loading/progress dialog
        isLoadingDialogOn = false;
        Get.back();
      }
      isLoadingDialogOn = true;
      LoadingDialog.showError(context: Get.overlayContext!, message: errorMessage);
      await Future.delayed(const Duration(seconds: 4));
    }

    isLoadingDialogOn = false;
    Get.back();
  }

  Future showSyncDialog({String? prefixMessage, required RxDouble value}) async {
    if (isLoadingDialogOn) {
      isLoadingDialogOn = false;
      Get.back();
    }

    isLoadingDialogOn = true;
    LoadingDialog.showProgress(
      context: Get.overlayContext!,
      prefixMessage: prefixMessage,
      progress: value
    );
  }

  Future syncDownClients() async {
    //NOTE: USE COMPUTE
    SyncManager? syncManager = syncManagerRepository.getByType(SyncType.clients);

    List<Client> clients = [];
    if (syncManager == null) {
      //sync clients
      int limit = Numbers.maxLimit; //chunk
      int page = Numbers.startPage;
      int count = Numbers.zero;
      int total = count + 1; //this is initial value -> needs an api

      List<String> zoneIds = [];
      for (Zone zone in _session.zones) {
        if (StringUtils.isNotNullNorEmpty(zone.zonaid)) {
          zoneIds.add(zone.zonaid!);
        }
      }
      showSyncDialog(
        value: _progressValue,
        prefixMessage: "Sincronizando clientes"
      );

      //TODO: api to know if the sync was successfully
      try {
        while (count < total) {
          BackendResponse<Client>? response = await clientInterceptor.syncClients(_session.token, limit, page, zoneIds);
          if (response != null && response.total != null) {
            List<Client> clientsResponse = response.data;
            if (clientsResponse.isNotEmpty) {
              clients.addAll(clientsResponse);
              total = response.total!;
              count = count + clientsResponse.length;
              if (count > 0 && total > 0) {
                _progressValue.value = (count * 100) / total;
              }
            }
          }

          page++;
        }
      } catch(e) {
        hideLoadingDialog(
          errorMessage: "Ocurrió un error sincronizando clientes, por favor intente otra vez"
        );
        print(e);
      }

      hideLoadingDialog();

      if (clients.isNotEmpty) {
        //save clients
        clientRepository.saveSyncDownClients("FP563", clients);
        //save new sync manager for this type
        syncManagerRepository.updateByType(SyncType.clients, syncDown: true);
      }


      return;
    }

    //check the last sync down
    DateTime lastSync = syncManager.lastSyncDownDate!;
    DateTime now = DateTime.now();
    if (now.difference(lastSync).inDays >= Numbers.maxDaysAllow) {
      //TODO: sent to sync manager page
      print('debe sincronizar');
    }
  }
}