import 'package:dimexa_vendors/data/models/reverse_geocoding_result/reverse_geocoding_result.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class GoogleInterceptorAbstract {
  Future<List<GoogleAddress>?> getAutoCompleteAddresses(String input);

  Future<LatLng?> getLatLngByPlaceId(String placeId);

  Future<String?> getAddressFromLocation(LatLng location);

  Future<bool> pingGoogle();
}