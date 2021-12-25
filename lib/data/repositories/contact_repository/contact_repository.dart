import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository_abstract.dart';
import 'package:get/get.dart';

class ContactRepository implements ContactRepositoryAbstract {
  final contactBox = Get.find<ObjectBox>().contactBox;

  @override
  void saveSyncDownContacts(List<String> clientIds, List<Contact> contacts) {
    try {
      contactBox.query(Contact_.clienteid.oneOf(clientIds)).build().remove();
      contactBox.putMany(contacts);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  List<Contact> listByClientId(String clientId) {
    return contactBox.query(Contact_.clienteid.equals(clientId)).build().find();
  }


}