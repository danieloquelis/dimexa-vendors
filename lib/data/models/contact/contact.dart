import 'dart:convert';
import 'package:objectbox/objectbox.dart';

///Model for client contacts
@Entity()
class Contact {
  Contact({
    this.clienteid,
    this.ruc,
    this.dni,
    this.compaiaid,
    this.contactoid,
    this.personaid,
    this.apellidopaterno,
    this.apellidomaterno,
    this.nombres,
    this.fechanacimiento,
    this.documentoidentidad,
    this.tipodocumentoidentidadid,
    this.tipodocumentoidentidad,
    this.estadocivilid,
    this.estadocivil,
    this.nacionalidadid,
    this.nacionalidad,
    this.generoid,
    this.genero,
    this.origenid,
    this.origen,
  });

  @Id(assignable: true)
  int? contactoid;
  @Index()
  String? clienteid;
  String? ruc;
  String? dni;
  int? compaiaid;
  int? personaid;
  String? apellidopaterno;
  String? apellidomaterno;
  String? nombres;
  String? fechanacimiento;
  String? documentoidentidad;
  int? tipodocumentoidentidadid;
  String? tipodocumentoidentidad;
  int? estadocivilid;
  String? estadocivil;
  int? nacionalidadid;
  String? nacionalidad;
  int? generoid;
  String? genero;
  int? origenid;
  String? origen;

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    clienteid: json["clienteid"],
    ruc: json["ruc"],
    dni: json["dni"],
    compaiaid: json["compañiaid"],
    contactoid: json["contactoid"],
    personaid: json["personaid"],
    apellidopaterno: json["apellidopaterno"],
    apellidomaterno: json["apellidomaterno"],
    nombres: json["nombres"],
    fechanacimiento: json["fechanacimiento"],
    documentoidentidad: json["documentoidentidad"],
    tipodocumentoidentidadid: json["tipodocumentoidentidadid"],
    tipodocumentoidentidad: json["tipodocumentoidentidad"],
    estadocivilid: json["estadocivilid"],
    estadocivil: json["estadocivil"],
    nacionalidadid: json["nacionalidadid"],
    nacionalidad: json["nacionalidad"],
    generoid: json["generoid"],
    genero: json["genero"],
    origenid: json["origenid"],
    origen: json["origen"],
  );

  Map<String, dynamic> toJson() => {
    "clienteid": clienteid,
    "ruc": ruc,
    "dni": dni,
    "compañiaid": compaiaid,
    "contactoid": contactoid,
    "personaid": personaid,
    "apellidopaterno": apellidopaterno,
    "apellidomaterno": apellidomaterno,
    "nombres": nombres,
    "fechanacimiento": fechanacimiento,
    "documentoidentidad": documentoidentidad,
    "tipodocumentoidentidadid": tipodocumentoidentidadid,
    "tipodocumentoidentidad": tipodocumentoidentidad,
    "estadocivilid": estadocivilid,
    "estadocivil": estadocivil,
    "nacionalidadid": nacionalidadid,
    "nacionalidad": nacionalidad,
    "generoid": generoid,
    "genero": genero,
    "origenid": origenid,
    "origen": origen,
  };

  static Contact fromJsonModel(Map<String, dynamic> json) => Contact.fromJson(json);
}

