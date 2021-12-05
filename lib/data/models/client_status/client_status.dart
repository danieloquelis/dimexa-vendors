import 'dart:convert';

import 'package:objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

@Entity()
class ClientStatus {
  ClientStatus({
    this.id,
    this.estadoclienteid,
    this.nombre,
  });

  int? id;
  @Index()
  String?  estadoclienteid;
  String? nombre;
  final client = ToOne<Client>();

  factory ClientStatus.fromRawJson(String str) => ClientStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClientStatus.fromJson(Map<String, dynamic> json) => ClientStatus(
    estadoclienteid: json["estadoclienteid"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "estadoclienteid": estadoclienteid,
    "nombre": nombre,
  };
}
