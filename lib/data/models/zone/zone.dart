import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class Zone {
  Zone({
    this.id,
    this.zonaid,
    this.nombre,
    this.vendedorid,
    this.canalid,
    this.subcanalid,
    this.unidadnegocioid,
    this.activo,
  });

  int? id;
  String? zonaid;
  String? nombre;
  String? vendedorid;
  String? canalid;
  String? subcanalid;
  String? unidadnegocioid;
  bool? activo;

  factory Zone.fromRawJson(String str) => Zone.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Zone.fromJson(Map<String, dynamic> json) => Zone(
    id: json["id"],
    zonaid: json["zonaid"],
    nombre: json["nombre"],
    vendedorid: json["vendedorid"],
    canalid: json["canalid"],
    subcanalid: json["subcanalid"],
    unidadnegocioid: json["unidadnegocioid"],
    activo: json["activo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "zonaid": zonaid,
    "nombre": nombre,
    "vendedorid": vendedorid,
    "canalid": canalid,
    "subcanalid": subcanalid,
    "unidadnegocioid": unidadnegocioid,
    "activo": activo,
  };
}
