import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository_abstract.dart';
import 'package:get/get.dart';

class ContactRepository implements ContactRepositoryAbstract {
  final contactBox = Get.find<ObjectBox>().contactBox;
  final contactRoleBox = Get.find<ObjectBox>().contactRoleBox;
  final contactMediaBox = Get.find<ObjectBox>().contactMediaBox;

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
  void saveSyncDownContactMedias(List<String> clientIds, List<ContactMedia> contactMedias) {
    try {
      contactMediaBox.query(ContactMedia_.clienteid.oneOf(clientIds)).build().remove();
      contactMediaBox.putMany(contactMedias);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  void saveSyncDownContactRoles(List<String> clientIds, List<ContactRole> contactRoles) {
    try {
      contactRoleBox.query(ContactRole_.clienteid.oneOf(clientIds)).build().remove();
      contactRoleBox.putMany(contactRoles);
    } catch(e) {
      onDBCatchError();
    }
  }

  List<ContactRole>? listContactRoleByClientId(String clientId) {
    try {
      return contactRoleBox.query(ContactRole_.clienteid.equals(clientId)).build().find();
    } catch(e) {
      onDBCatchError();
    }
    return null;
  }

  List<ContactMedia>? listContactMediaByClientId(String clientId) {
    try {
      return contactMediaBox.query(ContactMedia_.clienteid.equals(clientId)).build().find();
    } catch(e) {
      onDBCatchError();
    }
    return null;
  }

  @override
  List<Contact>? listByClientId(String clientId) {
    try {
      return contactBox.query(Contact_.clienteid.equals(clientId)).build().find();
    } catch(e) {
      onDBCatchError();
    }
    return null;
  }
}