import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();

  ///Private variables
  late Session _currentSession;
  late List<Zone> _currentZones = [];
  late String _selectedZoneId = "";


  ///Getters
  List<Zone> get currentZones => _currentZones;
  Session get currentSession => _currentSession;
  String get selectedZoneId => _selectedZoneId;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _currentSession = globalController.session;
    _currentZones = globalController.session.zones;
    _selectedZoneId = globalController.selectedZoneId;
  }


}