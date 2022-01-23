import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class DashboardAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getByZoneIds({
    required String token,
    required List<String> zoneIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/dashboard/getFnDashboardZonas',
        method: HttpMethod.post,
        token: token,
        body: {
          "p_zonas": zoneIds
        },
        received: received,
        total: total
    );
    return result;
  }
}