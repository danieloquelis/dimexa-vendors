import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/repositories/dashboard_repository/dashboard_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final dashboardRepository = Get.find<DashboardRepository>();

  ///Private variables
  late Session _currentSession;
  late List<String> _currentZoneIds = [];
  late DateTime _lastSyncDate;
  Dashboard? _dashboard;

  ///Getters
  List<String> get currentZoneIds => _currentZoneIds;
  Session get currentSession => _currentSession;
  RxString get selectedZoneId => globalController.selectedZoneId;
  DateTime get lastSyncDate => _lastSyncDate;
  Dashboard? get dashboard => _dashboard;

  @override
  void onInit() {
    super.onInit();
    _currentSession = globalController.session!;
    _currentZoneIds = globalController.sessionZoneIds;
    String zoneId = globalController.selectedZoneId.value;
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(zoneId, SyncType.dashboard);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    _dashboard = dashboardRepository.getByZoneId(zoneId);
  }

  void onChangeZone(String zoneId) async {
    //hide bottom sheet
    Get.back();
    globalController.showLoadingDialog(message: "Cambiando zona, por favor espere...");
    await Future.delayed(const Duration(milliseconds: 300));
    globalController.hideLoadingDialog();
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(globalController.selectedZoneId.value, SyncType.dashboard);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    _dashboard = dashboardRepository.getByZoneId(zoneId);
    globalController.setSelectedZoneId(zoneId);
    update();
  }

  void syncOnDemand() async {
    String zoneId = globalController.selectedZoneId.value;
    await globalController.syncDashboard(
        onDemand: true,
        zoneIds: [zoneId]
    );
    globalController.hideLoadingDialog();
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(globalController.selectedZoneId.value, SyncType.dashboard);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    _dashboard = dashboardRepository.getByZoneId(zoneId);
    update();
  }
}