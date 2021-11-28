
import 'dart:convert';

import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class GlobalController extends GetxController {
  final _store = Get.find<ObjectBox>().store;

  final List<AppPermission> _filteredPermissions = [];
  late Vendor _currentVendor;

  Vendor get currentVendor => _currentVendor;
  List<AppPermission> get filteredPermissions => _filteredPermissions;

  @override
  void onReady() async {
    super.onReady();
    //check session prohibited access
    //if its yes -> close the app

    //filter list of permissions based on current status
    await filterPermissions();
  }

  @override
  void onClose() {
    super.onClose();
    _store.close();
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
}