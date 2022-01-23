import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class OrderAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getDocumentType({
    required String token,
    List<String>? zoneIds,
    List<String>? productIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/pedido/getFnTipodocumento',
        method: HttpMethod.get,
        token: token,
        received: received,
        total: total
    );
    return result;
  }
}