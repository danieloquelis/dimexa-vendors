import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

abstract class ClientInterceptorAbstract {
  Future<BackendResponse<Client>?> syncClients(String? token, int limit, int page, List<String> zoneId, RxInt received, RxInt total);

  Future<Client?> getClientById(String token, String clientId);

  Future<BackendResponse<Contact>?> syncContacts(String? token, List<String> clientIds, RxInt received, RxInt total);

  Future<BackendResponse<Address>?> syncAddresses(String? token, List<String> clientIds, RxInt received, RxInt total);
}