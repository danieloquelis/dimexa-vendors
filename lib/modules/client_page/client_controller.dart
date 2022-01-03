import 'dart:async';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/client_wallet/cient_wallet.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/repositories/address_repository/address_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_wallet_repository/client_wallet_repository.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/data/repositories/zone_repository/zone_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final clientRepository = Get.find<ClientRepository>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientInterceptor = Get.find<ClientInterceptor>();
  final zoneRepository = Get.find<ZoneRepository>();
  final contactRepository = Get.find<ContactRepository>();
  final clientWalletRepository = Get.find<ClientWalletRepository>();
  final addressRepository = Get.find<AddressRepository>();

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

    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(globalController.selectedZoneId.value, SyncType.client);
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

    String zoneId = globalController.selectedZoneId.value;
    Zone? zone = zoneRepository.getById(zoneId);
    bool zoneSpecial = zone != null? zone.especial! : false;

    _clients = await clientRepository.searchByZoneIdAndFilterType(zoneId, zoneSpecial, text, _filterType);
    
    _loading = false;
    update();
  }

  void onSelectClient(Client client) {
    Client? dbClient = clientRepository.getById(globalController.selectedZoneId.value, client.clienteid!);
    if (dbClient == null) {
      globalController.hideLoadingDialog(
        errorMessage: "Ocurrió un error tratando de acceder a los datos del cliente"
      );
      return;
    }

    String zoneId = globalController.selectedZoneId.value;
    List<Contact>? dbClientContacts = contactRepository.listByClientId(dbClient.clienteid!);
    List<ContactRole>? dbContactRoles = contactRepository.listContactRoleByClientId(dbClient.clienteid!);
    List<ContactMedia>? dbContactMedias = contactRepository.listContactMediaByClientId(dbClient.clienteid!);
    List<Address>? dbClientAddresses = addressRepository.listByClientId(dbClient.clienteid!);
    ClientWallet? dbClientWallet = clientWalletRepository.getByZoneIdAndClientId(zoneId, dbClient.clienteid!);

    Get.toNamed(
      AppRoutes.toClientDetail(dbClient.id!),
      arguments: {
        "client": dbClient,
        "clientWallet": dbClientWallet,
        "clientAddresses": dbClientAddresses,
        "clientContacts": dbClientContacts,
        "contactRoles": dbContactRoles,
        "contactMedias": dbContactMedias
      }
    );
  }

  void syncOnDemand() async {
    String zoneId = globalController.selectedZoneId.value;
    await globalController.syncDownClients(
      onDemand: true,
      zoneIds: [zoneId]
    );
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(globalController.selectedZoneId.value, SyncType.client);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    //TODO: sync address and contact
    update();
  }

}