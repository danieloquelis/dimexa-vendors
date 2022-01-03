import 'package:dimexa_vendors/data/models/address/address.dart';

abstract class AddressRepositoryAbstract {
  void saveSyncDownAddresses(List<String> clientIds, List<Address> addresses);

  List<Address>? listByClientId(String clientId);
}