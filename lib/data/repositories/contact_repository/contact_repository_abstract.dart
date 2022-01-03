import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';

abstract class ContactRepositoryAbstract {
  void saveSyncDownContacts(List<String> clientIds, List<Contact> contacts);

  void saveSyncDownContactRoles(List<String> clientIds, List<ContactRole> contactRoles);

  void saveSyncDownContactMedias(List<String> clientIds, List<ContactMedia> contactMedias);

  List<Contact>? listByClientId(String clientId);
}