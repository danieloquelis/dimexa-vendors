import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

abstract class ClientRepositoryAbstract {
  void saveSyncDownClients(List<String> zoneIds, List<Client> clients);

  Future<List<Client>> searchByZoneIdAndFilterType(String zoneId, String searchText, SearchClientFilter filterType);

  Client updateClientById(String zoneId, String clientId, Client client);

  Client? getById(String zoneId, String clientId);
}