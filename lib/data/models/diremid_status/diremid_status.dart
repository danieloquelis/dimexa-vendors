import 'dart:convert';

import 'package:objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

@Entity()
class DiremidStatus {
  DiremidStatus({
    this.id,
    this.estadodiremidid,
    this.nombre,
  });

  int? id;
  @Index()
  String? estadodiremidid;
  String? nombre;
  final client = ToOne<Client>();

  factory DiremidStatus.fromRawJson(String str) => DiremidStatus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DiremidStatus.fromJson(Map<String, dynamic> json) => DiremidStatus(
    estadodiremidid: json["estadodiremidid"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "estadodiremidid": estadodiremidid,
    "nombre": nombre,
  };
}