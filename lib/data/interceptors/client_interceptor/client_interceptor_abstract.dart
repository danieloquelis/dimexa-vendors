import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';

abstract class ClientInterceptorAbstract {
  Future<BackendResponse<Client>?> syncClients(String toke, int limit, int page, List<String> zoneId);

  Future<Client?> getClientById(String token, String clientId);

  Future<BackendResponse<Contact>?> syncContacts(String? token, List<String> clientIds);

  Future<BackendResponse<Address>?> syncAddresses(String? token, List<String> clientIds);
}