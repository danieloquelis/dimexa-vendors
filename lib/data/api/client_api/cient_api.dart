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
    required List<String> zoneId,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
      '/clientes/getClientesZonaQuery',
      method: HttpMethod.post,
      token: token,
      body: {
        "limite": limit,
        "pagina": page,
        "zonaid": zoneId
      },
      received: received,
      total: total
    );
    return result;
  }

  Future<HttpResult> getById({
    required String token,
    required String clientId,
  }) async {
    final result = _http.request(
        '/clientes/getCliente',
        method: HttpMethod.post,
        token: token,
        body: {
          "clienteid": clientId
        }
    );
    return result;
  }

  Future<HttpResult> getContactsByClientIds({
    required String token,
    required List<String> clientIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
      '/clientes/getContactoCliente',
      method: HttpMethod.post,
      token: token,
      body: {
        "clienteid": clientIds
      },
      received: received,
      total: total
    );
    return result;
  }

  Future<HttpResult> getAddressesByClientIds({
    required String token,
    required List<String> clientIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
      '/clientes/getDireccionCliente',
      method: HttpMethod.post,
      token: token,
      body: {
        "clienteid": clientIds
      },
      received: received,
      total: total
    );
    return result;
  }
}