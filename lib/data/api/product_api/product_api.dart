import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class ProductAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getByZoneIdsOrProductIds({
    required String token,
    List<String>? zoneIds,
    List<String>? productIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/productos/getFnProductoZonas',
        method: HttpMethod.post,
        token: token,
        body: {
          "p_zonas": zoneIds,
          "p_productos": productIds
        },
        received: received,
        total: total
    );
    return result;
  }
}