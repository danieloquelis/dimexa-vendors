import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:dimexa_vendors/modules/splash_page/local_widgets/permission_dialog.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_device_identifier/flutter_device_identifier.dart';
import 'package:get/get.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashController extends GetxController {
  final globalController = Get.find<GlobalController>();
  final CarouselController _carouselController = CarouselController();
  late List<AppPermission> _appPermissions = [];
  int _permissionSlidePos = 0;
  bool _loading = false;

  //------------------Getters-------------------->
  List<AppPermission> get appPermissions => _appPermissions;
  int get permissionSlidePos => _permissionSlidePos;
  bool get loading => _loading;
  CarouselController get carouselController => _carouselController;

  @override
  void onInit() {
    super.onInit();
    _appPermissions = globalController.filteredPermissions;
  }

  @override
  void onReady() async {
    super.onReady();

    //show permissions dialog if list permissions is not empty
    if (_appPermissions.isNotEmpty) {
      await Get.bottomSheet(
          PermissionDialog(),
          isScrollControlled: true,
          isDismissible: false
      );
    }

    //check terminal
    //if permission has not been granted
    bool isPhonePermissionGranted = await Permission.phone.isGranted;
    if (!isPhonePermissionGranted) {
      //show dialog indicating needs to go to config or close the app
      await Get.defaultDialog(
        title: "Permiso no autorizado",
        content: Icon(Icons.accessibility),
      );
    }

    //get phone serial number
    String deviceSerialNumber = await FlutterDeviceIdentifier.serialCode;
    if (deviceSerialNumber.isEmpty) {
      //show dialog error trying to get serial device
    }

    //check if in session exist the configuration (need to encrypt)

        //if exist -> next step
        //if doesn't exist -> use API
          //if is valid -> save in session the current phone serial number (encrypt it) and continue
          //if is invalid -> show message error, save session prohibited device and close app.
    //check token
      //if token exists and is valid -> go to home
      //if token doesnt exist or is invalid -> go to login




    //permission();
    //sync();
  }

  void onPermissionSlideChanged(index) {
    _permissionSlidePos = index;
    update(["permission_slider_indicator"]);
  }

  void onRequestPermission() async {
    Permission permissionRequested = _appPermissions[_permissionSlidePos].permissionType;
    await permissionRequested.request();

    bool isLast = _permissionSlidePos == _appPermissions.length - 1;
    if (isLast) {
      //if the request is the last permission in the list then minimize bottomsheet
      Get.back();
    } else {
      _carouselController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear
      );
    }
  }


  void permission() async {
    await FlutterDeviceIdentifier.requestPermission();
    if (await FlutterDeviceIdentifier.checkPermission()) {
      String serialCode = await FlutterDeviceIdentifier.serialCode;
      print("Serial number: $serialCode");
    } else {
      print("No permissions");
    }

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