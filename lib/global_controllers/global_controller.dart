
import 'dart:async';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/repositories/address_repository/address_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository.dart';
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
  final addressRepository = Get.find<AddressRepository>();
  final contactRepository = Get.find<ContactRepository>();

  ///Private variables
  final List<AppPermission> _filteredPermissions = [];
  late Vendor _currentVendor;
  late Session _session;
  final RxString _selectedZoneId = "".obs;
  final RxDouble _progressValue = 0.0.obs;

  ///Local used variables
  bool isLoadingDialogOn = false;

  ///Getters
  Vendor get currentVendor => _currentVendor;
  List<AppPermission> get filteredPermissions => _filteredPermissions;
  Session get session => _session;
  RxString get selectedZoneId => _selectedZoneId;
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
      _selectedZoneId.value = StringUtils.checkNullOrEmpty(session.zones.first.zonaid);
    }
  }

  void setSelectedZoneId(String zoneId) {
    _selectedZoneId.value = zoneId;
    update(["selected_zone_id"]);
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

  Future<List<String>> syncDownClients({bool onDemand = false, String? zoneId}) async {
    List<String> zoneIds = [];
    if (StringUtils.isNullOrEmpty(zoneId)) {
      for (Zone zone in _session.zones) {
        if (StringUtils.isNotNullNorEmpty(zone.zonaid)) {
          zoneIds.add(zone.zonaid!);
        }
      }
    } else {
      //specific zone
      zoneIds.add(zoneId!);
    }

    List<SyncManager>? syncs = syncManagerRepository.getByTypeAndZoneIds(zoneIds, SyncType.clients);

    //check if there is one zone or all
    bool hasSyncBefore = CollectionUtils.isNotNullNorEmpty(syncs) && syncs!.length == zoneIds.length;

    List<Client> clients = [];
    List<String> clientIds = [];
    if (!hasSyncBefore || onDemand) {
      //sync clients
      int limit = Numbers.maxLimit; //chunk
      int page = Numbers.startPage;
      int count = Numbers.zero;
      int total = count + 1; //this is initial value -> needs an api

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
      }

      hideLoadingDialog();

      if (clients.isNotEmpty) {
        //save clients
        clientRepository.saveSyncDownClients(zoneIds, clients);
        //save new sync manager for this type
        syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
        //get clientIds
        for (Client client in clients) {
          if (!clientIds.contains(StringUtils.checkNullOrEmpty(client.clienteid))) {
            clientIds.add(StringUtils.checkNullOrEmpty(client.clienteid));
          }
        }
      }

      //reset value
      _progressValue.value = 0.0;
    }
    return clientIds;
  }

  Future syncDownAddresses(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        value: _progressValue,
        prefixMessage: "Sincronizando direcciones"
    );

    BackendResponse<Address>? response = await clientInterceptor.syncAddresses(_session.token, clientIds)
        .onError((error, stackTrace) {
      if (error is AppException) {
        hideLoadingDialog(
            errorMessage: error.uiMessage
        );
      } else {
        hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }

      return null;
    });

    if (response == null) {
      return;
    }

    hideLoadingDialog();
    List<Address> addresses = response.data;

    if (CollectionUtils.isNotNullNorEmpty(addresses)) {
      //save clients
      addressRepository.saveSyncDownAddresses(clientIds, addresses);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }


  }

  Future syncDownContacts(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        value: _progressValue,
        prefixMessage: "Sincronizando contactos"
    );

    BackendResponse<Contact>? response = await clientInterceptor.syncContacts(_session.token, clientIds).onError((error, stackTrace) {
      if (error is AppException) {
        hideLoadingDialog(
            errorMessage: error.uiMessage
        );
      } else {
        hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }

      return null;
    });

    if (response == null) {
      return;
    }

    hideLoadingDialog();
    List<Contact> contacts = response.data;

    if (CollectionUtils.isNotNullNorEmpty(contacts)) {
      //save clients
      contactRepository.saveSyncDownContacts(clientIds, contacts);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }
  }
}