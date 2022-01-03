import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/client_wallet/cient_wallet.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

abstract class ClientInterceptorAbstract {
  Future<BackendResponse<Client>?> syncClients(String? token, List<String> zoneIds, RxInt received, RxInt total);

  Future<Client?> getClientById(String token, String clientId);

  Future<BackendResponse<Contact>?> syncContacts(String? token, List<String> clientIds, RxInt received, RxInt total);

  Future<BackendResponse<Address>?> syncAddresses(String? token, List<String> clientIds, RxInt received, RxInt total);

  Future<BackendResponse<ContactRole>?> syncContactRoles(String? token, List<String> clientIds, RxInt received, RxInt total);

  Future<BackendResponse<ContactMedia>?> syncContactMedias(String? token, List<String> clientIds, RxInt received, RxInt total);

  Future<BackendResponse<ClientWallet>?> syncWallets(String? token, List<String> zoneIds, List<String>? clientIds, RxInt received, RxInt total);
}