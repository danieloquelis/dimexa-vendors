import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class ClientRepository  {
  final clientBox = Get.find<ObjectBox>().clientBox;

  @override
  void saveSyncDownClients(List<String> zoneIds, List<Client> clients) {
    try {
      clientBox.query(Client_.zonaid.oneOf(zoneIds)).build().remove();
      clientBox.putMany(clients);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  Future<List<Client>> searchByZoneIdAndFilterType(String zoneId, bool zoneSpecial, String searchText, SearchClientFilter filterType) async {
    if (searchText.isEmpty) {
      return Future.value(List.empty());
    }
    try {
      late Query<Client> query;
      switch (filterType) {
        case SearchClientFilter.CommercialName:
          if (!zoneSpecial) {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .and(Client_.nombrecomercial.contains(searchText))
            ).build();
          } else {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .or(Client_.zonaid2.equals(zoneId))
              .or(Client_.zonaid3.equals(zoneId))
              .or(Client_.zonaid4.equals(zoneId))
              .and(Client_.nombrecomercial.contains(searchText))
            ).build();
          }
          break;
        case SearchClientFilter.SocialName:
          if (!zoneSpecial) {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .and(Client_.razonsocial.contains(searchText))
            ).build();
          } else {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .or(Client_.zonaid2.equals(zoneId))
              .or(Client_.zonaid3.equals(zoneId))
              .or(Client_.zonaid4.equals(zoneId))
              .and(Client_.razonsocial.contains(searchText))
            ).build();
          }
          break;
        case SearchClientFilter.RUC:
          if (!zoneSpecial) {
            query = clientBox.query(
                Client_.zonaid.equals(zoneId)
                    .and(Client_.ruc.contains(searchText))
            ).build();
          } else {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .or(Client_.zonaid2.equals(zoneId))
              .or(Client_.zonaid3.equals(zoneId))
              .or(Client_.zonaid4.equals(zoneId))
              .and(Client_.ruc.contains(searchText))
            ).build();
          }

          break;
        case SearchClientFilter.Code:
          if (!zoneSpecial) {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .and(Client_.clienteid.contains(searchText))

            ).build();
          } else {
            query = clientBox.query(
              Client_.zonaid.equals(zoneId)
              .or(Client_.zonaid2.equals(zoneId))
              .or(Client_.zonaid3.equals(zoneId))
              .or(Client_.zonaid4.equals(zoneId))
              .and(Client_.clienteid.contains(searchText))
            ).build();
          }
          break;
      }

      return query.find();
    } catch(e) {
      onDBCatchError();
    }
    return Future.value(List.empty());
  }

  @override
  Client updateClientById(String zoneId, String clientId, Client client) {
    try {
      Client? currentClient = clientBox.query(Client_.zonaid.equals(zoneId).and(Client_.clienteid.equals(clientId))).build().findFirst();
      client.id = currentClient!.id;
      client.lastSync = DateTime.now();
      clientBox.put(client);
    } catch(e) {
      onDBCatchError();
    }
    return client;
  }

  @override
  Client? getById(String zoneId, String clientId) {
    try {
      return clientBox.query(Client_.zonaid.equals(zoneId).and(Client_.clienteid.equals(clientId))).build().findFirst();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }


}