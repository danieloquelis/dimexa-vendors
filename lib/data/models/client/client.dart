import 'dart:convert';

import 'package:objectbox/objectbox.dart';


@Entity()
class Client {
  Client({
    this.id = 0,
    this.clienteid,
    this.unidadnegocioid,
    this.ruc,
    this.razonsocial,
    this.nombrecomercial,
    this.zonaid,
    this.ubigeoid,
    this.direccion,
    this.estadoclienteid,
    this.estadodiremidid,
    this.condicionventaid,
    this.tipodescuentoid,
    this.subcanalid,
    this.diavisita1,
    this.diavisita2,
    this.representantelegal,
    this.dni,
    this.aniversario,
    this.telefono,
    this.movil,
    this.lineacredito,
    this.deuda,
    this.lineadisponible,
  });

  @Id(assignable: true)
  int id;
  String? clienteid;
  String? unidadnegocioid;
  String? ruc;
  String? razonsocial;
  String? nombrecomercial;
  String? zonaid;
  String? ubigeoid;
  String? direccion;
  String? estadoclienteid;
  String? estadodiremidid;
  String? condicionventaid;
  String? tipodescuentoid;
  String? subcanalid;
  String? diavisita1;
  String? diavisita2;
  String? representantelegal;
  String? dni;
  DateTime? aniversario;
  String? telefono;
  String? movil;
  String? lineacredito;
  String? deuda;
  String? lineadisponible;

  factory Client.fromRawJson(String str) => Client.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    id: json["id"],
    clienteid: json["clienteid"],
    unidadnegocioid: json["unidadnegocioid"],
    ruc: json["ruc"],
    razonsocial: json["razonsocial"],
    nombrecomercial: json["nombrecomercial"],
    zonaid: json["zonaid"],
    ubigeoid: json["ubigeoid"],
    direccion: json["direccion"],
    estadoclienteid: json["estadoclienteid"],
    estadodiremidid: json["estadodiremidid"],
    condicionventaid: json["condicionventaid"],
    tipodescuentoid: json["tipodescuentoid"],
    subcanalid: json["subcanalid"],
    diavisita1: json["diavisita1"],
    diavisita2: json["diavisita2"],
    representantelegal: json["representantelegal"] == null ? null : json["representantelegal"],
    dni: json["dni"],
    aniversario: json["aniversario"] == null ? null : DateTime.parse(json["aniversario"]),
    telefono: json["telefono"],
    movil: json["movil"],
    lineacredito: json["lineacredito"],
    deuda: json["deuda"],
    lineadisponible: json["lineadisponible"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "clienteid": clienteid,
    "unidadnegocioid": unidadnegocioid,
    "ruc": ruc,
    "razonsocial": razonsocial,
    "nombrecomercial": nombrecomercial,
    "zonaid": zonaid,
    "ubigeoid": ubigeoid,
    "direccion": direccion,
    "estadoclienteid": estadoclienteid,
    "estadodiremidid": estadodiremidid,
    "condicionventaid": condicionventaid,
    "tipodescuentoid": tipodescuentoid,
    "subcanalid": subcanalid,
    "diavisita1": diavisita1,
    "diavisita2": diavisita2,
    "representantelegal": representantelegal == null ? null : representantelegal!,
    "dni": dni,
    "aniversario": null,//aniversario == null ? null : "${aniversario!.year.toString().padLeft(4, '0')}-${aniversario.month.toString().padLeft(2, '0')}-${aniversario.day.toString().padLeft(2, '0')}",
    "telefono": telefono,
    "movil": movil,
    "lineacredito": lineacredito,
    "deuda": deuda,
    "lineadisponible": lineadisponible,
  };

  static Client fromJsonModel(Map<String, dynamic> json) => Client.fromJson(json);
}
