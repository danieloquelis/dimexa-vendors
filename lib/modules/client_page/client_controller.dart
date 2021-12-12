import 'dart:async';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final clientBox = Get.find<ObjectBox>().clientBox;
  final clientRepository = Get.find<ClientRepository>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientInterceptor = Get.find<ClientInterceptor>();

  ///Private variables
  bool _loading = false;
  final RxString _searchText = "".obs;
  List<Client> _clients = [];
  SearchClientFilter _filterType = SearchClientFilter.CommercialName;
  late DateTime _lastSyncDate;

  ///Getters
  List<Client> get clients => _clients;
  bool get loading => _loading;
  SearchClientFilter get filterType => _filterType;
  DateTime get lastSyncDate => _lastSyncDate;

  @override
  void onInit() {
    super.onInit();

    //listener for search text in client view
    interval(_searchText, (_) {
      onSearchClient(_searchText.value);
    },
      time: const Duration(milliseconds: 500)
    );

    SyncManager? syncManager = syncManagerRepository.getByType(globalController.selectedZoneId.value, SyncType.clients);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;

    }
  }

  @override
  void onClose() {
    super.onClose();
    //clean cache
  }

  void onBack() {
    Get.back(closeOverlays: true);
  }

  void setSearchText(String text) {
    _loading = true;
    update();
    _searchText.value = text;
  }

  void setFilterType(SearchClientFilter filterType) async {
    _filterType = filterType;
    update();
  }

  Future<void> onSearchClient(String searchText) async {
    String text = searchText.isNotEmpty ? searchText.toUpperCase() : "";
    if (text.isEmpty) {
      _clients = [];
      _loading = false;
      update();
      return;
    }

    _clients = await clientRepository.searchByZoneIdAndFilterType(globalController.selectedZoneId.value, text, _filterType);
    
    _loading = false;
    update();
  }

  void onSelectClient(Client client) {
    final Client? selectedClient;
    Client? result = clientRepository.getById(globalController.selectedZoneId.value, client.clienteid!);
    if (result != null) {
      selectedClient = result;
    } else {
      selectedClient = client;
    }
    Get.toNamed(
      AppRoutes.toClientDetail(selectedClient.id),
      arguments: {
        "selectedClient": selectedClient
      }
    );
  }

  void syncOnDemand() async {
    await globalController.syncDownClients(
      onDemand: true,
      zoneId: globalController.selectedZoneId.value
    );
    SyncManager? syncManager = syncManagerRepository.getByType(globalController.selectedZoneId.value, SyncType.clients);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    update();
  }

}