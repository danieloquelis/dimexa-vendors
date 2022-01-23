import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class ZoneAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> get({
    required String token,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/zonas/getFnZonas',
        method: HttpMethod.get,
        token: token,
        received: received,
        total: total
    );
    return result;
  }
}