import 'dart:async';

import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/reverse_geocoding_result/reverse_geocoding_result.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final googleInterceptor = Get.find<GoogleInterceptor>();

  ///Map view private variables
  final TextEditingController _addressTextController = TextEditingController();
  final  TextEditingController  _referenceTextController =TextEditingController();
  bool _isEditing = false;
  bool _isSearchingAddress = false;
  bool _showAddressAutoComplete = false;
  final RxString _searchAddressText = "".obs;
  final RxString _floatingButtonLabel = "".obs;
  final RxList _autoCompleteAddresses = [].obs;
  final Completer<GoogleMapController> _mapCompleter = Completer();
  late GoogleMapController _mapController;
  LatLng? _mapMoveTarget;
  final CameraPosition _dimexaCameraPosition = const CameraPosition(
    target: LatLng(-12.0964112, -77.0590747),
    zoom: 16.48,
  );
  CameraPosition? _initCameraPosition;
  Address? _address;

  ///Map view getters
  TextEditingController get referenceTextController => _referenceTextController;
  TextEditingController get addressTextController => _addressTextController;
  bool get isEditing => _isEditing;
  bool get isSearchingAddress => _isSearchingAddress;
  RxString get floatingButtonLabel => _floatingButtonLabel;
  bool get showAddressAutoComplete => _showAddressAutoComplete;
  RxList get autoCompleteAddresses => _autoCompleteAddresses;
  Completer<GoogleMapController> get mapCompleter => _mapCompleter;
  CameraPosition get initCameraPosition => _initCameraPosition!;

  @override
  void onInit() {
    super.onInit();
    //listener for search address in map view
    interval(_searchAddressText, (_) {
      onSearchAddress(_searchAddressText.value);
    },
        time: const Duration(milliseconds: 500)
    );
    _address = Get.arguments['address'];
    if (_address != null) {
      _addressTextController.text = StringUtils.checkNullOrEmpty(_address!.direccion);
      _referenceTextController.text = StringUtils.checkNullOrEmpty(_address!.referencia);
      if (StringUtils.isNotNullNorEmpty(_address!.latitud) && StringUtils.isNotNullNorEmpty(_address!.longitud)) {
        double lat = double.parse(_address!.latitud!);
        double lng = double.parse(_address!.longitud!);
        _initCameraPosition = CameraPosition(
          target: LatLng(lat, lng),
          zoom: 16.48,
        );
      } else {
        _initCameraPosition = _dimexaCameraPosition;
      }
    }

  }

  @override
  void onReady() {
    super.onReady();
    floatingButtonLabel.value = "Editar";
  }

  void onBack() {
    Get.back();
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
    if (_showAddressAutoComplete) {
      return;
    }
    _mapMoveTarget = position.target;
  }

  void onCameraMoveStarted() {
    if (_showAddressAutoComplete) {
      return;
    }
    _isSearchingAddress = true;
    update(["mapview_address_card"]);
  }

  void onCameraIdle() async {
    if (_showAddressAutoComplete || _mapMoveTarget == null) {
      return;
    }
    String? address = await googleInterceptor.getAddressFromLocation(_mapMoveTarget!)
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

    _isSearchingAddress = false;
    update(["mapview_address_card"]);

    if (address == null) {
      return;
    }

    _addressTextController.text = address;
  }

  void onSearchAddressFocusChanged(bool hasFocus){
    _showAddressAutoComplete = hasFocus;
    _autoCompleteAddresses.clear();
    update(["mapview_address_card"]);
  }

  void onSelectAddressFromAutoComplete(GoogleAddress googleAddress) async {
    _addressTextController.text = googleAddress.description!;
    _addressTextController.selection = TextSelection.fromPosition(const TextPosition(offset: 0));
    _autoCompleteAddresses.clear();
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
      _showAddressAutoComplete = false;
      update(["mapview_address_card"]);
      return;
    }

    globalController.hideLoadingDialog();
    await _mapController.animateCamera(CameraUpdate.newLatLngZoom(location, 18));
    dismissKeyboard();
    _showAddressAutoComplete = false;
    update(["mapview_address_card"]);
  }

  void onMapCreated(GoogleMapController controller) async {
    _mapCompleter.complete(controller);
    _mapController = await _mapCompleter.future;
  }

  void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(Get.overlayContext!);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}