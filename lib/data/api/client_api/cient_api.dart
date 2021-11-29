import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class ClientAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> sync({
    required String token,
    required int limit,
    required int page,
    required String zonedId
  }) async {
    final result = _http.request(
        '/clientes/getClientesZona',
        method: HttpMethod.post,
        token: token,
        body: {
          "limite": limit,
          "pagina": page,
          "zonaid": zonedId
        }
    );
    return result;
  }
}