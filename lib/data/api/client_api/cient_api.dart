import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class ClientAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getByZoneIds({
    required String token,
    required List<String> zoneIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
      '/clientes/getFnClientes',
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
      '/clientes/getFnClienteContactos',
      method: HttpMethod.post,
      token: token,
      body: {
        "p_clientes": clientIds
      },
      received: received,
      total: total
    );
    return result;
  }

  Future<HttpResult> getRoleContactsByClientIds({
    required String token,
    required List<String> clientIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/clientes/getFnClienteContactoRoles',
        method: HttpMethod.post,
        token: token,
        body: {
          "p_clientes": clientIds
        },
        received: received,
        total: total
    );
    return result;
  }

  ///@{medios de comunicación de los contactos de los clientes}
  ///apparently each client can have different ways to communicate
  Future<HttpResult> getMediaContactsByClientIds({
    required String token,
    required List<String> clientIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/clientes/getFnClienteContactoMedios',
        method: HttpMethod.post,
        token: token,
        body: {
          "p_clientes": clientIds
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
      '/clientes/getFnClienteDireccion',
      method: HttpMethod.post,
      token: token,
      body: {
        "p_clientes": clientIds
      },
      received: received,
      total: total
    );
    return result;
  }

  ///@{datos de cartera de los clientes}
  ///this method fetch client data
  Future<HttpResult> getWalletByZoneIds({
    required String token,
    required List<String> zoneIds,
    List<String>? clientIds,
    required RxInt received,
    required RxInt total
  }) async {
    final result = _http.request(
        '/clientes/getFnClienteCarteras',
        method: HttpMethod.post,
        token: token,
        body: {
          "p_clientes": clientIds,
          "p_zonas": zoneIds
        },
        received: received,
        total: total
    );
    return result;
  }
}