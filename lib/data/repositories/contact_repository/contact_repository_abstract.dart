import 'package:dimexa_vendors/data/models/contact/contact.dart';

abstract class ContactRepositoryAbstract {
  void saveSyncDownContacts(List<String> clientIds, List<Contact> contacts);

  List<Contact> listByClientId(String clientId);
}