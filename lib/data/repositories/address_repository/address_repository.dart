import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class AddressRepository {
  final addressBox = Get.find<ObjectBox>().addressBox;

  @override
  saveSyncDownAddresses(List<String> clientIds, List<Address> addresses) {
    try {
      addressBox.query(Address_.clienteid.oneOf(clientIds)).build().remove();
      addressBox.putMany(addresses);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  List<Address>? listByClientId(String clientId) {
    try {
      return addressBox.query(Address_.clienteid.equals(clientId)).build().find();
    } catch(e) {
      onDBCatchError();
    }
    return null;
  }

}