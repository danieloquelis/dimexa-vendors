import 'package:hive_flutter/hive_flutter.dart';

//part 'client.g.dart';

@HiveType(typeId : 0, adapterName: 'ClientAdapter')
class Client extends HiveObject {

  @HiveField(0)
  String? id;

  @HiveField(1)
  String? commercialName;

  String? socialName;
  String? address;
  String? ruc;

}