import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();

  ///Private variables
  late Session _currentSession;
  late List<Zone> _currentZones = [];

  ///Getters
  List<Zone> get currentZones => _currentZones;
  Session get currentSession => _currentSession;
  RxString get selectedZoneId => globalController.selectedZoneId;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _currentSession = globalController.session;
    _currentZones = globalController.session.zones;
  }

  void onChangeZone(String zoneId) async {
    //hide bottom sheet
    Get.back();
    globalController.showLoadingDialog(message: "Cambiando zona, por favor espere...");
    await Future.delayed(Duration(seconds: 1));
    globalController.hideLoadingDialog();
    globalController.setSelectedZoneId(zoneId);

  }
}