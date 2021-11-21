import 'dart:convert';

import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
class SplashController extends GetxController {
  final globalController = Get.find<GlobalController>();

  bool _loading = false;

  bool get loading => _loading;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    sync();
  }

  void sync() async {
    showLoading();

    try {
      final store = globalController.store;

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

  void showLoading() {
    _loading = true;
    update(['spinner']);
  }

  void hideLoading() {
    _loading = false;
    update(['spinner']);
  }
}