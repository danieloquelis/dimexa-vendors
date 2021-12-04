import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/details_bottom_sheet/details_bottom_sheet.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsController extends GetxController {
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
  late Client _selectedClient;
  late DateTime _lastSyncDate;
  late Session _session;

  ///Getters
  List<Client> get clients => _clients;
  bool get loading => _loading;
  Client get selectedClient => _selectedClient;
  SearchClientFilter get filterType => _filterType;
  DateTime get lastSyncDate => _lastSyncDate;

  void setSearchText(String text) {
    _loading = true;
    update();
    _searchText.value = text;
  }

  @override
  void onInit() {
    super.onInit();
    interval(_searchText, (_) {
      _onSearchClient(_searchText.value);
    },
      time: const Duration(milliseconds: 500)
    );

    SyncManager? syncManager = syncManagerRepository.getByType(SyncType.clients);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;

    }
    _session = globalController.session;
  }

  @override
  void onReady() {
    super.onReady();

  }

  void onBack() {
    Get.back();
  }

  void setFilterType(SearchClientFilter filterType) async {
    _filterType = filterType;
    update();
  }

  Future<void> _onSearchClient(String searchText) async {
    String text = searchText.isNotEmpty ? searchText.toUpperCase() : "";
    if (text.isEmpty) {
      _clients = [];
      _loading = false;
      update();
      return;
    }

    //TODO: hardcoded
    _clients = await clientRepository.searchByZoneIdAndFilterType(globalController.selectedZoneId.value, text, _filterType);
    
    _loading = false;
    update();
  }

  void onSelectClient(Client client) {

    Client? result = clientRepository.getById(globalController.selectedZoneId.value, client.clienteid!);
    if (result != null) {
      _selectedClient = result;
    } else {
      _selectedClient = client;
    }
    Get.toNamed(AppRoutes.clientDetails);
  }

  void onSyncClient() async {
    globalController.showLoadingDialog();
    Client? client = await clientInterceptor.getClientById(_session.token!, _selectedClient.clienteid!)
        .onError((error, stackTrace) async {
          await globalController.hideLoadingDialog(
            errorMessage: '$error'
          );
          return null;
        });

    globalController.hideLoadingDialog();

    if (client == null) {
      return;
    }

    _selectedClient = clientRepository.updateClientById(globalController.selectedZoneId.value, _selectedClient.clienteid!, client);

    update();
  }

  void showGeneralInfoBottomSheet() {
    Get.bottomSheet(
      DetailsBottomSheet.generalInfo(
        context: Get.overlayContext!,
        client: _selectedClient,
        height: 390
      ).show(),
      isScrollControlled: true
    );
  }

  void showCommercialInfoBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.commercialInfo(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 316
        ).show(),
        isScrollControlled: true
    );
  }

  void showContactsBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.contacts(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 360
        ).showOnlyWidget(),
        isScrollControlled: true
    );
  }

  void showAddressesBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.adresses(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 150
        ).showOnlyWidget(),
        isScrollControlled: true
    );
  }

}