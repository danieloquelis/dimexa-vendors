
import 'package:objectbox/objectbox.dart';

const String tableClients = 'clients';

@Entity()
class Client {
  int id = 0;

  @Unique()
  int sid;
  String commercialName;
  String socialName;
  String address;
  String ruc;

  Client({
    required this.sid,
    required this.commercialName,
    required this.socialName,
    required this.address,
    required this.ruc
  });
}

//All must be strings
class ClientFields {
//  static const String id = 'id';
//  static const String commercialName = 'commercialName';
//  static const String socialName = 'socialName';
//  static const String address = 'address';
//  static const String ruc = 'ruc';
}