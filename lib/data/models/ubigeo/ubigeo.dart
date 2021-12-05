import 'dart:convert';

import 'package:objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

@Entity()
class Ubigeo {
  Ubigeo({
    this.id = 0,
    this.ubigeoid,
    this.nombre
  });
  int id;
  @Index()
  String? ubigeoid;
  String? nombre;

  final client = ToOne<Client>();

  factory Ubigeo.fromRawJson(String str) => Ubigeo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ubigeo.fromJson(Map<String, dynamic> json) => Ubigeo(
    ubigeoid: json["ubigeoid"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "ubigeoid": ubigeoid,
    "nombre": nombre,
  };
}
