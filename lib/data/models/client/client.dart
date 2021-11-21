
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

const String tableClients = 'clients';


Client clientFromJson(String str) => Client.fromJson(json.decode(str));

String clientToJson(Client data) => json.encode(data.toJson());

@Entity()
class Client {
  int id = 0;

  String sid;
  String clienteid;
  String unidadnegocioid;
  String ruc;
  String razonsocial;
  String nombrecomercial;
  String zonaid;
  String ubigeoid;
  String ubiego;
  String direccion;
  String estadoclienteid;
  String estadocliente;
  String estadodiremidid;
  String estadodiremid;
  String condicionventaid;
  String condicionventa;
  String tipodescuentoid;
  String tipodescuento;
  String subcanalid;
  String subcanal;
  String diavisita1;
  String diavisita2;
  String representantelegal;
  String dni;
  String aniversario;
  String telefono;
  String movil;
  String lineacredito;
  String deuda;
  String lineadisponible;

  Client({
    required this.sid,
    required this.clienteid,
    required this.unidadnegocioid,
    required this.ruc,
    required this.razonsocial,
    required this.nombrecomercial,
    required this.zonaid,
    required this.ubigeoid,
    required this.ubiego,
    required this.direccion,
    required this.estadoclienteid,
    required this.estadocliente,
    required this.estadodiremidid,
    required this.estadodiremid,
    required this.condicionventaid,
    required this.condicionventa,
    required this.tipodescuentoid,
    required this.tipodescuento,
    required this.subcanalid,
    required this.subcanal,
    required this.diavisita1,
    required this.diavisita2,
    required this.representantelegal,
    required this.dni,
    required this.aniversario,
    required this.telefono,
    required this.movil,
    required this.lineacredito,
    required this.deuda,
    required this.lineadisponible,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    sid: json["id"],
    clienteid: json["clienteid"],
    unidadnegocioid: json["unidadnegocioid"],
    ruc: json["ruc"],
    razonsocial: json["razonsocial"],
    nombrecomercial: json["nombrecomercial"],
    zonaid: json["zonaid"],
    ubigeoid: json["ubigeoid"],
    ubiego: json["ubiego"],
    direccion: json["direccion"],
    estadoclienteid: json["estadoclienteid"],
    estadocliente: json["estadocliente"],
    estadodiremidid: json["estadodiremidid"],
    estadodiremid: json["estadodiremid"],
    condicionventaid: json["condicionventaid"],
    condicionventa: json["condicionventa"],
    tipodescuentoid: json["tipodescuentoid"],
    tipodescuento: json["tipodescuento"],
    subcanalid: json["subcanalid"],
    subcanal: json["subcanal"],
    diavisita1: json["diavisita1"],
    diavisita2: json["diavisita2"],
    representantelegal: json["representantelegal"],
    dni: json["dni"],
    aniversario: json["aniversario"],
    telefono: json["telefono"],
    movil: json["movil"],
    lineacredito: json["lineacredito"],
    deuda: json["deuda"],
    lineadisponible: json["lineadisponible"],
  );

  Map<String, dynamic> toJson() => {
    "id": sid,
    "clienteid": clienteid,
    "unidadnegocioid": unidadnegocioid,
    "ruc": ruc,
    "razonsocial": razonsocial,
    "nombrecomercial": nombrecomercial,
    "zonaid": zonaid,
    "ubigeoid": ubigeoid,
    "ubiego": ubiego,
    "direccion": direccion,
    "estadoclienteid": estadoclienteid,
    "estadocliente": estadocliente,
    "estadodiremidid": estadodiremidid,
    "estadodiremid": estadodiremid,
    "condicionventaid": condicionventaid,
    "condicionventa": condicionventa,
    "tipodescuentoid": tipodescuentoid,
    "tipodescuento": tipodescuento,
    "subcanalid": subcanalid,
    "subcanal": subcanal,
    "diavisita1": diavisita1,
    "diavisita2": diavisita2,
    "representantelegal": representantelegal,
    "dni": dni,
    "aniversario": aniversario,
    "telefono": telefono,
    "movil": movil,
    "lineacredito": lineacredito,
    "deuda": deuda,
    "lineadisponible": lineadisponible,
  };

}

//All must be strings
class ClientFields {
//  static const String id = 'id';
//  static const String commercialName = 'commercialName';
//  static const String socialName = 'socialName';
//  static const String address = 'address';
//  static const String ruc = 'ruc';
}




// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);



