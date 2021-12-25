import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class Address {
  Address({
    this.clientedireccionid,
    this.clienteid,
    this.ubigeoid,
    this.direccion,
    this.referencia,
    this.tipoprioridadid,
    this.tipoestablecimientoid,
    this.latitud,
    this.longitud,
    this.creado,
    this.actualizado,
    this.descargado,
    this.sincronizado,
    this.usuarioid,
    this.tipoestablecimiento,
    this.tipoprioridad,
  });

  @Id(assignable: true)
  int? clientedireccionid;
  String? clienteid;
  String? ubigeoid;
  String? direccion;
  String? referencia;
  int? tipoprioridadid;
  int? tipoestablecimientoid;
  String? latitud;
  String? longitud;
  DateTime? creado;
  DateTime? actualizado;
  String? descargado;
  String? sincronizado;
  String? usuarioid;
  String? tipoestablecimiento;
  String? tipoprioridad;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    clientedireccionid: json["clientedireccionid"],
    clienteid: json["clienteid"],
    ubigeoid: json["ubigeoid"],
    direccion: json["direccion"],
    referencia: json["referencia"],
    tipoprioridadid: json["tipoprioridadid"],
    tipoestablecimientoid: json["tipoestablecimientoid"],
    latitud: json["latitud"],
    longitud: json["longitud"],
    creado: DateTime.parse(json["creado"]),
    actualizado: DateTime.parse(json["actualizado"]),
    descargado: json["descargado"],
    sincronizado: json["sincronizado"],
    usuarioid: json["usuarioid"],
    tipoestablecimiento: json["tipoestablecimiento"],
    tipoprioridad: json["tipoprioridad"],
  );

  Map<String, dynamic> toJson() => {
    "clientedireccionid": clientedireccionid,
    "clienteid": clienteid,
    "ubigeoid": ubigeoid,
    "direccion": direccion,
    "referencia": referencia,
    "tipoprioridadid": tipoprioridadid,
    "tipoestablecimientoid": tipoestablecimientoid,
    "latitud": latitud,
    "longitud": longitud,
    "creado": creado != null ? creado!.toIso8601String() : null,
    "actualizado": actualizado != null ? actualizado!.toIso8601String() : null,
    "descargado": descargado,
    "sincronizado": sincronizado,
    "usuarioid": usuarioid,
    "tipoestablecimiento": tipoestablecimiento,
    "tipoprioridad": tipoprioridad,
  };

  static Address fromJsonModel(Map<String, dynamic> json) => Address.fromJson(json);
}
