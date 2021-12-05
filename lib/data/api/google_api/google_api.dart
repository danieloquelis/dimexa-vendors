import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class GoogleAPI {
  final Http _http = Get.find<Http>();
  final googleApiKey = "AIzaSyDI97gpZDA-lXeznHW6a1OWhItYuQjON8M";//"AIzaSyB8hTxRCcWDCRA5LTYiZuw4ZNXkPYE6XKU";

  Future<HttpResult> placeAutoComplete({
    required String input,
    required String sessionToken
  }) async {
    final result = _http.request(
        'https://maps.googleapis.com/maps/api/place/autocomplete/json',
        method: HttpMethod.get,
        queryParameters: {
          "input": input,
          "key": googleApiKey,
          "sessiontoken": sessionToken
        }
    );
    return result;
  }

  Future<HttpResult> placeDetailsById({
    required String placeId,
    required String sessionToken
  }) async {
    final result = _http.request(
        'https://maps.googleapis.com/maps/api/place/details/json',
        method: HttpMethod.get,
        queryParameters: {
          "place_id": placeId,
          "fields": "geometry",
          "key": googleApiKey,
          "sessiontoken": sessionToken
        }
    );
    return result;
  }

  Future<HttpResult> reverseGeoCoding({
    required double lat,
    required double lng
  }) async {
    final result = _http.request(
        'https://maps.googleapis.com/maps/api/geocode/json',
        method: HttpMethod.get,
        queryParameters: {
          "latlng": "$lat,$lng",
          "key": googleApiKey,
        }
    );
    return result;
  }

  Future<HttpResult> pingGoogle() async {
    final result = _http.request(
        'https://www.google.com',
        method: HttpMethod.get,
    );
    return result;
  }
}