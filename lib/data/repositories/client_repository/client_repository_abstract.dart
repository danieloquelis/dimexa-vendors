import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

abstract class ClientRepositoryAbstract {
  void saveSyncDownClients(String zoneId, List<Client> clients);

  Future<List<Client>> searchByZoneIdAndFilterType(String zoneId, String searchText, SearchClientFilter filterType);
}