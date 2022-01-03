import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class Client {
  Client({
    this.id,
    this.clienteid,
    this.ruc,
    this.razonsocial,
    this.nombrecomercial,
    this.direccion,
    this.ubigeoid,
    this.distrito,
    this.provincia,
    this.departamento,
    this.estadoclienteid,
    this.estadocliente,
    this.estadodiremidid,
    this.estadodiremid,
    this.sedeid,
    this.sede,
    this.zonaid,
    this.zonaid2,
    this.zonaid3,
    this.zonaid4,
    this.vendedorid,
    this.vendedor,
    this.subcanalid,
    this.subcanal,
    this.canalid,
    this.canal,
    this.condicionventaid,
    this.condicionventa,
    this.tipodescuentoid,
    this.tipodescuento,
    this.dia1,
    this.dia2,
    this.representantelegal,
    this.dni,
    this.aniversario,
    this.telefono,
    this.movil,
    this.lastSync
  });

  int? id;
  @Index()
  String? clienteid;
  String? ruc;
  String? razonsocial;
  String? nombrecomercial;
  String? direccion;
  String? ubigeoid;
  String? distrito;
  String? provincia;
  String? departamento;
  String? estadoclienteid;
  String? estadocliente;
  String? estadodiremidid;
  String? estadodiremid;
  String? sedeid;
  String? sede;
  String? zonaid;
  String? zonaid2;
  String? zonaid3;
  String? zonaid4;
  String? vendedorid;
  String? vendedor;
  String? subcanalid;
  String? subcanal;
  String? canalid;
  String? canal;
  String? condicionventaid;
  String? condicionventa;
  String? tipodescuentoid;
  String? tipodescuento;
  String? dia1;
  String? dia2;
  String? representantelegal;
  String? dni;
  String? aniversario;
  String? telefono;
  String? movil;
  DateTime? lastSync;

  factory Client.fromRawJson(String str) => Client.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    clienteid: json["clienteid"],
    ruc: json["ruc"],
    razonsocial: json["razonsocial"],
    nombrecomercial: json["nombrecomercial"],
    direccion: json["direccion"],
    ubigeoid: json["ubigeoid"],
    distrito: json["distrito"],
    provincia: json["provincia"],
    departamento: json["departamento"],
    estadoclienteid: json["estadoclienteid"],
    estadocliente: json["estadocliente"],
    estadodiremidid: json["estadodiremidid"],
    estadodiremid: json["estadodiremid"],
    sedeid: json["sedeid"],
    sede: json["sede"],
    zonaid: json["zonaid"],
    zonaid2: json["zonaid_2"],
    zonaid3: json["zonaid_3"],
    zonaid4: json["zonaid_4"],
    vendedorid: json["vendedorid"],
    vendedor: json["vendedor"],
    subcanalid: json["subcanalid"],
    subcanal: json["subcanal"],
    canalid: json["canalid"],
    canal: json["canal"],
    condicionventaid: json["condicionventaid"],
    condicionventa: json["condicionventa"],
    tipodescuentoid: json["tipodescuentoid"],
    tipodescuento: json["tipodescuento"],
    dia1: json["dia1"],
    dia2: json["dia2"],
    representantelegal: json["representantelegal"],
    dni: json["dni"],
    aniversario: json["aniversario"],
    telefono: json["telefono"],
    movil: json["movil"],
    lastSync: DateTime.now()
  );

  Map<String, dynamic> toJson() => {
    "clienteid": clienteid,
    "ruc": ruc,
    "razonsocial": razonsocial,
    "nombrecomercial": nombrecomercial,
    "direccion": direccion,
    "ubigeoid": ubigeoid,
    "distrito": distrito,
    "provincia": provincia,
    "departamento": departamento,
    "estadoclienteid": estadoclienteid,
    "estadocliente": estadocliente,
    "estadodiremidid": estadodiremidid,
    "estadodiremid": estadodiremid,
    "sedeid": sedeid,
    "sede": sede,
    "zonaid": zonaid,
    "zonaid_2": zonaid2,
    "zonaid_3": zonaid3,
    "zonaid_4": zonaid4,
    "vendedorid": vendedorid,
    "vendedor": vendedor,
    "subcanalid": subcanalid,
    "subcanal": subcanal,
    "canalid": canalid,
    "canal": canal,
    "condicionventaid": condicionventaid,
    "condicionventa": condicionventa,
    "tipodescuentoid": tipodescuentoid,
    "tipodescuento": tipodescuento,
    "dia1": dia1,
    "dia2": dia2,
    "representantelegal": representantelegal,
    "dni": dni,
    "aniversario": aniversario,
    "telefono": telefono,
    "movil": movil,
  };

  static Client fromJsonModel(Map<String, dynamic> json) => Client.fromJson(json);
}