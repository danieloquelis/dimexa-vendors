
import 'dart:convert';

import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:flutter/services.dart';
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

  ///Getters
  Vendor get currentVendor => _currentVendor;
  List<AppPermission> get filteredPermissions => _filteredPermissions;
  Session get session => _session;

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
  }

  void setVendor(Vendor vendor) {
    _currentVendor = vendor;
  }

  void sync() async {
    try {
      const store = null; //globalController.store;

      //vendors
      final vendorBox = store.box<Vendor>();
      List<Vendor> currentVendors = vendorBox.getAll();
      if (currentVendors.isEmpty) {
        final String vendorPayload = await rootBundle.loadString('mockdata/dimexa-users.json');
        final jsonVendors = await json.decode(vendorPayload);
        List<Vendor> vendors = [];
        if (jsonVendors != null) {
          jsonVendors.forEach((vendorJson) {
            if (vendorJson != null && vendorJson.toString().isNotEmpty) {
              Vendor vendor = Vendor.fromJson(vendorJson);
              vendors.add(vendor);
            }
          });
        }

        vendorBox.putMany(vendors);

      }

      //clients
      final clientBox = store.box<Client>();
      List<Client> currentClients = clientBox.getAll();
      if (currentClients.isEmpty) {
        final String payload = await rootBundle.loadString('mockdata/dimexa-clientes-lima.json');
        final jsonData = await json.decode(payload);
        List<Client> clients = [];
        if (jsonData != null) {
          jsonData.forEach((clientJson) {
            if (clientJson != null && clientJson.toString().isNotEmpty) {
              Client client = Client.fromJson(clientJson);
              clients.add(client);
            }
          });
        }

        clientBox.putMany(clients);

      }


      Get.to(() => Login(), transition: Transition.rightToLeft);
    } catch(e) {
      print(e.toString());
      Get.defaultDialog(
          title: "Error in splash",
          middleText: e.toString()
      );
    }
  }

  Future syncDownClients() async {
    //NOTE: USE COMPUTE
    SyncManager? syncManager = syncManagerRepository.getByType(SyncType.clients);

    List<Client> clients = [];
    if (syncManager == null) {
      //sync clients
      int limit = 200; //chunk
      int page = 0;
      int total = limit + 1; //this is initial value -> needs an api
      int count = 0;

      //TODO: api to know if the sync was successfully

      while (count < total) {
        BackendResponse<Client>? response = await clientInterceptor.syncClients(_session.token, limit, page, "FP563");
        if (response != null && response.total != null) {
          List<Client> clientsResponse = response.data;
          if (clientsResponse.isNotEmpty) {
            clients.addAll(clientsResponse);
            total = response.total!;
            count = count + clientsResponse.length;
          }
        }

        page++;
      }

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
    int maxDaysAllow = 1;
    DateTime now = DateTime.now();
    if (now.difference(lastSync).inDays >= maxDaysAllow) {
      //TODO: sent to sync manager page
    }
  }
}