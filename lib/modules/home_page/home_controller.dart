import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();

  ///Private variables
  late Session _currentSession;
  late List<Zone> _currentZones = [];
  late DateTime _lastSyncDate;


  ///Getters
  List<Zone> get currentZones => _currentZones;
  Session get currentSession => _currentSession;
  RxString get selectedZoneId => globalController.selectedZoneId;
  DateTime get lastSyncDate => _lastSyncDate;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _currentSession = globalController.session;
    _currentZones = globalController.session.zones;
    SyncManager? syncManager = syncManagerRepository.getByType(SyncType.session);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
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