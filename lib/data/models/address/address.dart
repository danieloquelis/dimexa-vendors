import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class Address {
  Address({
    this.clientedireccionid,
    this.clienteid,
    this.direccion,
    this.ubigeoid,
    this.distrito,
    this.provincia,
    this.departamento,
    this.referencia,
    this.latitud,
    this.longitud,
    this.tipoprioridadid,
    this.tipoprioridad,
    this.tipoestablecimientoid,
    this.tipoestablecimiento,
  });

  @Id(assignable: true)
  int? clientedireccionid;
  @Index()
  String? clienteid;
  String? direccion;
  String? ubigeoid;
  String? distrito;
  String? provincia;
  String? departamento;
  String? referencia;
  String? latitud;
  String? longitud;
  int? tipoprioridadid;
  String? tipoprioridad;
  int? tipoestablecimientoid;
  String? tipoestablecimiento;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    clientedireccionid: json["clientedireccionid"],
    clienteid: json["clienteid"],
    direccion: json["direccion"],
    ubigeoid: json["ubigeoid"],
    distrito: json["distrito"],
    provincia: json["provincia"],
    departamento: json["departamento"],
    referencia: json["referencia"],
    latitud: json["latitud"],
    longitud: json["longitud"],
    tipoprioridadid: json["tipoprioridadid"],
    tipoprioridad: json["tipoprioridad"],
    tipoestablecimientoid: json["tipoestablecimientoid"],
    tipoestablecimiento: json["tipoestablecimiento"],
  );

  Map<String, dynamic> toJson() => {
    "clientedireccionid": clientedireccionid,
    "clienteid": clienteid,
    "direccion": direccion,
    "ubigeoid": ubigeoid,
    "distrito": distrito,
    "provincia": provincia,
    "departamento": departamento,
    "referencia": referencia,
    "latitud": latitud,
    "longitud": longitud,
    "tipoprioridadid": tipoprioridadid,
    "tipoprioridad": tipoprioridad,
    "tipoestablecimientoid": tipoestablecimientoid,
    "tipoestablecimiento": tipoestablecimiento,
  };

  static Address fromJsonModel(Map<String, dynamic> json) => Address.fromJson(json);
}

