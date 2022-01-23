import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/client_wallet/cient_wallet.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class ClientWalletRepository {
  final clientWalletBox = Get.find<ObjectBox>().clientWalletBox;

  void saveMany(List<String> zoneIds, List<String> clientIds, List<ClientWallet> data) {
    try {
      clientWalletBox.query(
          ClientWallet_.zonaid.oneOf(zoneIds).and(ClientWallet_.clienteid.oneOf(clientIds))
      ).build().remove();
      clientWalletBox.putMany(data);
    } catch(e) {
      onDBCatchError();
    }
  }

  ClientWallet? getByZoneIdAndClientId(String zoneId, String clientId) {
    try {
      return clientWalletBox.query(
          ClientWallet_.zonaid.equals(zoneId)
          .and(ClientWallet_.clienteid.equals(clientId))
      ).build().findFirst();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }
}