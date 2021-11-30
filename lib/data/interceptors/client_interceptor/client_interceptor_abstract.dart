import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

abstract class ClientInterceptorAbstract {
  Future<BackendResponse<Client>?> syncClients(String toke, int limit, int page, String zoneId);
}