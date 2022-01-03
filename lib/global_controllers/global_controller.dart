import 'dart:async';
import 'dart:convert';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/dashboard_interceptor/dashboard_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/zone_interceptor/zone_interceptor.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client_wallet/cient_wallet.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/repositories/address_repository/address_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_wallet_repository/client_wallet_repository.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository.dart';
import 'package:dimexa_vendors/data/repositories/dashboard_repository/dashboard_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/data/repositories/zone_repository/zone_repository.dart';
import 'package:dimexa_vendors/global_widgets/loading_dialog/loading_dialog.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class GlobalController extends GetxController {
  ///Injections
  final clientInterceptor = Get.find<ClientInterceptor>();
  final dashboardInterceptor = Get.find<DashboardInterceptor>();
  final zoneInterceptor = Get.find<ZoneInterceptor>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientRepository = Get.find<ClientRepository>();
  final addressRepository = Get.find<AddressRepository>();
  final contactRepository = Get.find<ContactRepository>();
  final zoneRepository = Get.find<ZoneRepository>();
  final dashboardRepository = Get.find<DashboardRepository>();
  final clientWalletRepository = Get.find<ClientWalletRepository>();

  ///Private variables
  final List<AppPermission> _filteredPermissions = [];
  late Session _session;
  late List<String> _sessionZoneIds = [];
  final RxString _selectedZoneId = "".obs;
  final RxInt _received = 0.obs;
  final RxInt _total = 0.obs;

  ///Local used variables
  bool isLoadingDialogOn = false;

  ///Getters
  List<AppPermission> get filteredPermissions => _filteredPermissions;
  Session get session => _session;
  RxString get selectedZoneId => _selectedZoneId;
  List<String> get sessionZoneIds => _sessionZoneIds;

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
    if (StringUtils.isNotNullNorEmpty(session.zoneIds)) {
      _sessionZoneIds = json.decode(session.zoneIds!).cast<String>();
      _selectedZoneId.value = StringUtils.checkNullOrEmpty(_sessionZoneIds.first);
    }
  }

  void setSelectedZoneId(String zoneId) {
    _selectedZoneId.value = zoneId;
    update(["selected_zone_id"]);
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

  Future showSyncDialog({String? prefixMessage, required RxInt received, required RxInt total}) async {
    if (isLoadingDialogOn) {
      isLoadingDialogOn = false;
      Get.back();
    }

    isLoadingDialogOn = true;
    LoadingDialog.showProgress(
      context: Get.overlayContext!,
      prefixMessage: prefixMessage,
      received: received,
      total: _total
    );
  }

  Future<List<String>> syncDownClients({bool onDemand = false, List<String>? zoneIds}) async {
    if (!onDemand || CollectionUtils.isNullOrEmpty(zoneIds)) {
      zoneIds = [..._sessionZoneIds];
    }

    List<SyncManager>? syncs = syncManagerRepository.getByTypeAndZoneIds(zoneIds!, SyncType.client);
    //check which zone needs to be updated based on last sync and if its not on demand
    //if its on demand then it doesn't matter when it was the last sync
    if (!onDemand && CollectionUtils.isNotNullNorEmpty(syncs)) {
      for (SyncManager sync in syncs!) {
        if (zoneIds.contains(StringUtils.checkNullOrEmpty(sync.zoneId))) {
          //check last update
          //if its upper than max hours allowed then sync
          if (sync.lastSyncDownDate != null && sync.lastSyncDownDate!.difference(DateTime.now()).inHours > Numbers.maxSyncDiffHoursAllowed) {
            continue;
          }

          zoneIds.remove(sync.zoneId);
        }
      }
    }

    List<String> clientIds = [];
    if (CollectionUtils.isNullOrEmpty(zoneIds)) {
      return [];
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando clientes"
    );

    BackendResponse<Client>? response = await clientInterceptor.syncClients(_session.token, zoneIds, _received, _total)
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
      return [];
    }

    List<Client> clients = response.data;

    if (CollectionUtils.isNotNullNorEmpty(clients)) {
      //save clients
      clientRepository.saveSyncDownClients(zoneIds, clients);
      //save new sync manager for this type
      syncManagerRepository.updateByTypeAndZoneIds(zoneIds, SyncType.client, syncDown: true);
      //get clientIds
      await Future.forEach(clients, (Client client) {
        if (!clientIds.contains(StringUtils.checkNullOrEmpty(client.clienteid))) {
          clientIds.add(StringUtils.checkNullOrEmpty(client.clienteid));
        }
      });
    }
    //hideLoadingDialog();
    resetSyncProgress();

    return clientIds;
  }

  Future syncDownAddresses(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando direcciones"
    );

    BackendResponse<Address>? response = await clientInterceptor.syncAddresses(_session.token, clientIds, _received, _total)
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

    //hideLoadingDialog();
    List<Address> addresses = response.data;

    if (CollectionUtils.isNotNullNorEmpty(addresses)) {
      //save client addresses
      addressRepository.saveSyncDownAddresses(clientIds, addresses);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }

    resetSyncProgress();
  }

  Future syncDownContacts(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando contactos"
    );

    BackendResponse<Contact>? response = await clientInterceptor.syncContacts(_session.token, clientIds, _received, _total).onError((error, stackTrace) {
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

    //hideLoadingDialog();
    List<Contact> contacts = response.data;

    if (CollectionUtils.isNotNullNorEmpty(contacts)) {
      //save client contacts
      contactRepository.saveSyncDownContacts(clientIds, contacts);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }

    resetSyncProgress();
  }

  Future syncDownContactRoles(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando roles"
    );

    BackendResponse<ContactRole>? response = await clientInterceptor.syncContactRoles(_session.token, clientIds, _received, _total)
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

    //hideLoadingDialog();
    List<ContactRole> contactRoles = response.data;

    if (CollectionUtils.isNotNullNorEmpty(contactRoles)) {
      //save client roles
      contactRepository.saveSyncDownContactRoles(clientIds, contactRoles);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }

    resetSyncProgress();
  }

  Future syncDownContactMedias(List<String> clientIds) async {
    if (clientIds.isEmpty) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando medios"
    );

    BackendResponse<ContactMedia>? response = await clientInterceptor.syncContactMedias(_session.token, clientIds, _received, _total)
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

    //hideLoadingDialog();
    List<ContactMedia> contactMedias = response.data;

    if (CollectionUtils.isNotNullNorEmpty(contactMedias)) {
      //save client medias
      contactRepository.saveSyncDownContactMedias(clientIds, contactMedias);
      //save new sync manager for this type
      //syncManagerRepository.updateByTypeAndZoneIds(zoneIds,SyncType.clients, syncDown: true);
    }

    resetSyncProgress();
  }

  Future syncDownClientWallet({bool onDemand = false, List<String>? zoneIds, required List<String> clientIds}) async {
    if (!onDemand || CollectionUtils.isNullOrEmpty(zoneIds)) {
      zoneIds = [..._sessionZoneIds];
    }

    List<SyncManager>? syncs = syncManagerRepository.getByTypeAndZoneIds(zoneIds!, SyncType.clientWallet);
    //check which zone needs to be updated based on last sync and if its not on demand
    //if its on demand then it doesn't matter when it was the last sync
    if (!onDemand && CollectionUtils.isNotNullNorEmpty(syncs)) {
      for (SyncManager sync in syncs!) {
        if (zoneIds.contains(StringUtils.checkNullOrEmpty(sync.zoneId))) {
          //check last update
          //if its upper than max hours allowed then sync
          if (sync.lastSyncDownDate != null && sync.lastSyncDownDate!.difference(DateTime.now()).inHours > Numbers.maxSyncDiffHoursAllowed) {
            continue;
          }

          zoneIds.remove(sync.zoneId);
        }
      }
    }

    if (CollectionUtils.isNullOrEmpty(zoneIds)) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando datos de cartera"
    );

    BackendResponse<ClientWallet>? response = await clientInterceptor.syncWallets(_session.token, zoneIds, onDemand ? clientIds: null, _received, _total)
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

    //hideLoadingDialog();
    List<ClientWallet> clientWallets = response.data;

    if (CollectionUtils.isNotNullNorEmpty(clientWallets)) {
      //save client wallets
      clientWalletRepository.saveMany(zoneIds, clientIds, clientWallets);
      //save new sync manager for this type
      syncManagerRepository.updateByTypeAndZoneIds(zoneIds, SyncType.clientWallet, syncDown: true);
    }
    resetSyncProgress();
  }

  Future syncZones({bool onDemand = false}) async {

    //check when was the last update only if its not on demand
    SyncManager? sync = syncManagerRepository.getByType(SyncType.clientWallet);
    if (!onDemand &&
        sync != null &&
        sync.lastSyncDownDate != null &&
        sync.lastSyncDownDate!.difference(DateTime.now()).inHours <= Numbers.maxSyncDiffHoursAllowed) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando zonas"
    );

    BackendResponse<Zone>? response = await zoneInterceptor.syncDownZones(_session.token, _received, _total)
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

    //hideLoadingDialog();
    List<Zone> zones = response.data;

    if (CollectionUtils.isNotNullNorEmpty(zones)) {
      //save zones
      zoneRepository.saveMany(zones);
      //save new sync manager for this type
      syncManagerRepository.updateByType(SyncType.clientWallet, syncDown: true);
    }

    resetSyncProgress();
  }

  Future syncDashboard({bool onDemand = false, List<String>? zoneIds}) async {
    if (!onDemand || CollectionUtils.isNullOrEmpty(zoneIds)) {
      zoneIds = [..._sessionZoneIds];
    }

    List<SyncManager>? syncs = syncManagerRepository.getByTypeAndZoneIds(zoneIds!, SyncType.dashboard);
    //check which zone needs to be updated based on last sync and if its not on demand
    //if its on demand then it doesn't matter when it was the last sync
    if (!onDemand && CollectionUtils.isNotNullNorEmpty(syncs)) {
      for (SyncManager sync in syncs!) {
        if (zoneIds.contains(StringUtils.checkNullOrEmpty(sync.zoneId))) {
          //check last update
          //if its upper than max hours allowed then sync
          if (sync.lastSyncDownDate != null && sync.lastSyncDownDate!.difference(DateTime.now()).inHours > Numbers.maxSyncDiffHoursAllowed) {
            continue;
          }

          zoneIds.remove(sync.zoneId);
        }
      }
    }

    if (CollectionUtils.isNullOrEmpty(zoneIds)) {
      return;
    }

    showSyncDialog(
        received: _received,
        total: _total,
        prefixMessage: "Sincronizando dashboard"
    );

    BackendResponse<Dashboard>? response = await dashboardInterceptor.sync(_session.token, zoneIds, _received, _total)
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

    //by zones
    List<Dashboard> dashboards = response.data;

    if (CollectionUtils.isNotNullNorEmpty(dashboards)) {
      //save dashboard by zones
      dashboardRepository.save(zoneIds, dashboards);
      //save new sync manager for this type
      syncManagerRepository.updateByTypeAndZoneIds(zoneIds, SyncType.dashboard, syncDown: true);
    }
    resetSyncProgress();
  }

  void resetSyncProgress() {
    _received.value = 0;
    _total.value = 0;
  }
}