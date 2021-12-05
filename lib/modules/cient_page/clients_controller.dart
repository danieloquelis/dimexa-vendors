import 'dart:async';

import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/data/models/reverse_geocoding_result/reverse_geocoding_result.dart';
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
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ClientsController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final clientBox = Get.find<ObjectBox>().clientBox;
  final clientRepository = Get.find<ClientRepository>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientInterceptor = Get.find<ClientInterceptor>();
  final googleInterceptor = Get.find<GoogleInterceptor>();

  ///Private variables
  bool _loading = false;
  final RxString _searchText = "".obs;
  List<Client> _clients = [];
  SearchClientFilter _filterType = SearchClientFilter.CommercialName;
  late Client _selectedClient;
  late DateTime _lastSyncDate;
  late Session _session;

  ///Map view private variables
  final  _addressTextController = TextEditingController();
  final  _referenceTextController =  TextEditingController();
  bool _isEditing = false;
  bool _isSearchingAddress = false;
  bool _showAddressAutoComplete = false;
  final RxString _searchAddressText = "".obs;
  final RxString _floatingButtonLabel = "".obs;
  final RxList _autoCompleteAddresses = [].obs;
  final Completer<GoogleMapController> _mapCompleter = Completer();
  late GoogleMapController _mapController;

  ///Map view getters
  TextEditingController get referenceTextController => _referenceTextController;
  TextEditingController get addressTextController => _addressTextController;
  bool get isEditing => _isEditing;
  bool get isSearchingAddress => _isSearchingAddress;
  RxString get floatingButtonLabel => _floatingButtonLabel;
  bool get showAddressAutoComplete => _showAddressAutoComplete;
  RxList get autoCompleteAddresses => _autoCompleteAddresses;
  Completer<GoogleMapController> get mapCompleter => _mapCompleter;

  ///Getters
  List<Client> get clients => _clients;
  bool get loading => _loading;
  Client get selectedClient => _selectedClient;
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

    //listener for search address in map view
    interval(_searchAddressText, (_) {
      onSearchAddress(_searchAddressText.value);
    },
      time: const Duration(milliseconds: 500)
    );

    SyncManager? syncManager = syncManagerRepository.getByType(SyncType.clients);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;

    }
    _session = globalController.session;
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

  void goToMapView() {
    //here we initialized everything regarding map view
    _floatingButtonLabel.value = "Editar";
    Get.toNamed(AppRoutes.clientAdressMap);
  }

  void setSearchAddressText(String text) {
    _isSearchingAddress = true;
    _searchAddressText.value = text;
    update(["mapview_address_card"]);
  }

  void onSearchAddress(String address) async {
    List<GoogleAddress>? googleAddresses = await googleInterceptor.getAutoCompleteAddresses(address)
    .onError((error, stackTrace) {
      if (error is AppException) {
        globalController.hideLoadingDialog(
          errorMessage: error.uiMessage
        );
      } else {
        globalController.hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }
      return null;
    });

    _isSearchingAddress = false;
    update(["mapview_address_card"]);

    if (googleAddresses == null) {
      return;
    }

    _autoCompleteAddresses.value = googleAddresses;
  }

  void onEditAddress() {
    _floatingButtonLabel.value = _isEditing? "Editar" : "Guardar";
    _isEditing = !_isEditing;
  }

  void onCameraMove(CameraPosition position) {
    print('${position.target}');
  }

  void onCameraMoveStarted() {
    _isSearchingAddress = true;
    update(["mapview_address_card"]);
  }

  void onCameraIdle() {
    _isSearchingAddress = false;
    update(["mapview_address_card"]);
  }

  void onSearchAddressFocusChanged(bool hasFocus){
    _showAddressAutoComplete = hasFocus;
    _autoCompleteAddresses.clear();
    update(["mapview_address_card"]);
  }

  void onSelectAddressFromAutoComplete(GoogleAddress googleAddress) async {
    _addressTextController.text = googleAddress.description!;
    _autoCompleteAddresses.clear();
    _showAddressAutoComplete = false;
    update(["mapview_address_card"]);

    globalController.showLoadingDialog();
    LatLng? location = await googleInterceptor.getLatLngByPlaceId(StringUtils.checkNullOrEmpty(googleAddress.placeId))
    .onError((error, stackTrace) {
      if (error is AppException) {
        globalController.hideLoadingDialog(
          errorMessage: error.uiMessage
        )
      } else {
        globalController.hideLoadingDialog(
            errorMessage: Strings.systemError
        )
      }
      return null;
    });


    if (location == null) {
      return;
    }

    globalController.hideLoadingDialog();
    _mapController.animateCamera(CameraUpdate.newLatLngZoom(location, 15));

  }

  void onMapCreated(GoogleMapController controller) async {
    _mapCompleter.complete(controller);
    _mapController = await _mapCompleter.future;
  }
}