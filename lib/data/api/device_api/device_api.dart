import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class DeviceAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> validateDevice({
    required String deviceToken
  }) async {
    final result = _http.request(
        '/equipos/validar',
        method: HttpMethod.post,
        body: {
          "terminalid": deviceToken,
        }
    );
    return result;
  }
}