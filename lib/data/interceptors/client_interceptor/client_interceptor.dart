import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/client_api/cient_api.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor_abstract.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:get/get.dart';

class ClientInterceptor implements ClientInterceptorAbstract {
  final _api = Get.find<ClientAPI>();

  @override
  Future<BackendResponse<Client>?> syncClients(String? token, int limit, int page, List<String> zoneId, RxInt received, RxInt total) async {
    final result = await _api.sync(
      limit: limit,
      page: page,
      zoneId: zoneId,
      token: token ?? "",
      received: received,
      total: total
    );

    if (result.error == null) {
      BackendResponse<Client> response = BackendResponse.fromJson(result.data, Client.fromJsonModel);
      return response;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
                result,
            )
        )
    );
  }

  @override
  Future<Client?> getClientById(String token, String clientId) async {
    final result = await _api.getById(
      token: token,
      clientId: clientId
    );

    if (result.error == null) {
      BackendResponse<Client> response = BackendResponse.fromJson(result.data, Client.fromJsonModel);
      return response.data;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  @override
  Future<BackendResponse<Address>?> syncAddresses(String? token, List<String> clientIds, RxInt received, RxInt total) async {
    final result = await _api.getAddressesByClientIds(
      token: token!,
      clientIds: clientIds,
      received: received,
      total:total
    );

    if (result.error == null) {
      BackendResponse<Address> response = BackendResponse.fromJson(result.data, Address.fromJsonModel);
      return response;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  @override
  Future<BackendResponse<Contact>?> syncContacts(String? token, List<String> clientIds, RxInt received, RxInt total) async {
    final result = await _api.getContactsByClientIds(
      token: token!,
      clientIds: clientIds,
      received: received,
      total: total
    );

    if (result.error == null) {
      BackendResponse<Contact> response = BackendResponse.fromJson(result.data, Contact.fromJsonModel);
      return response;
    }

    return Future.error(
      AppException(
          interceptorErrorHandler(
            result,
          )
      )
    );
  }
}