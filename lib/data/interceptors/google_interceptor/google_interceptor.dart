import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/google_api/google_api.dart';
import 'package:dimexa_vendors/data/models/reverse_geocoding_result/reverse_geocoding_result.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleInterceptor {
  final _api = Get.find<GoogleAPI>();

  Future<List<GoogleAddress>?> getAutoCompleteAddresses(String input) async {
    input = input.replaceAll(RegExp('\\s+'), '+');
    final result = await _api.placeAutoComplete(
      input: input,
      sessionToken: "1234abcd"
    );

    if (result.error == null) {
      ReverseGeocodingResult response = ReverseGeocodingResult.fromJson(result.data);
      return response.predictions;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  Future<String?> getAddressFromLocation(LatLng location) async {
    final result = await _api.reverseGeoCoding(
        lat: location.latitude,
        lng: location.longitude
    );

    if (result.error == null) {
      ReverseGeocodingResult response = ReverseGeocodingResult.fromJson(result.data);
      String? address = response.results![0].formattedAddress;
      return address;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  Future<LatLng?> getLatLngByPlaceId(String placeId) async {
    final result = await _api.placeDetailsById(
      placeId: placeId,
      sessionToken: "123dvb"
    );

    if (result.error == null) {
      ReverseGeocodingResult response = ReverseGeocodingResult.fromJson(result.data);
      LatLng? location = LatLng(response.result!.geometry!.location!.lat!, response.result!.geometry!.location!.lng!);
      return location;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  Future<bool> pingGoogle() async {
    final result = await _api.pingGoogle();

    if (result.error == null) {
      return true;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

}