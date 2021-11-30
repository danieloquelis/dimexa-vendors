import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository_abstract.dart';
import 'package:get/get.dart';

class ClientRepository implements ClientRepositoryAbstract {
  final clientBox = Get.find<ObjectBox>().clientBox;

  @override
  void saveSyncDownClients(String zoneId, List<Client> clients) {
    try {
      clientBox.query(Client_.zonaid.equals(zoneId)).build().remove();
      clientBox.putMany(clients);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  Future<List<Client>> searchByZoneIdAndFilterType(String zoneId, String searchText, SearchClientFilter filterType) async {
    if (searchText.isEmpty) {
      return Future.value(List.empty());
    }
    try {
      late Query<Client> query;
      switch (filterType) {
        case SearchClientFilter.CommercialName:
          query = clientBox.query(
              Client_.zonaid.equals(zoneId)
                  .and(Client_.nombrecomercial.contains(searchText))
          ).build();
          break;
        case SearchClientFilter.SocialName:
          query = clientBox.query(
              Client_.zonaid.equals(zoneId)
                  .and(Client_.razonsocial.contains(searchText))
          ).build();
          break;
        case SearchClientFilter.RUC:
          query = clientBox.query(
              Client_.zonaid.equals(zoneId)
                  .and(Client_.ruc.contains(searchText))
          ).build();
          break;
        case SearchClientFilter.Code:
          query = clientBox.query(
              Client_.zonaid.equals(zoneId)
                  .and(Client_.clienteid.contains(searchText))

          ).build();
          break;
        default:
          query = clientBox.query(
              Client_.zonaid.equals(zoneId)
                  .and(Client_.nombrecomercial.contains(searchText))
          ).build();
      }

      return query.find();
    } catch(e) {
      onDBCatchError();
    }
    return Future.value(List.empty());
  }


}