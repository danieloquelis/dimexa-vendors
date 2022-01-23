import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class ContactMedia {
  ContactMedia({
    this.clienteid,
    this.personaid,
    this.contactoid,
    this.mediocomunicacionid,
    this.tipomediocomunicacionid,
    this.tipomediocomunicacion,
    this.valor,
    this.origenid,
    this.origen,
    this.tipoprioridadid,
    this.tipoprioridad,
    this.ciudadid,
    this.ciudad,
    this.codigodiscado,
    this.estadoid,
    this.estado,
  });

  @Id(assignable: true)
  int? mediocomunicacionid;
  @Index()
  String? clienteid;
  int? personaid;
  int? contactoid;
  int? tipomediocomunicacionid;
  String? tipomediocomunicacion;
  String? valor;
  int? origenid;
  String? origen;
  int? tipoprioridadid;
  String? tipoprioridad;
  int? ciudadid;
  String? ciudad;
  String? codigodiscado;
  int? estadoid;
  String? estado;

  factory ContactMedia.fromRawJson(String str) => ContactMedia.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContactMedia.fromJson(Map<String, dynamic> json) => ContactMedia(
    clienteid: json["clienteid"],
    personaid: json["personaid"],
    contactoid: json["contactoid"],
    mediocomunicacionid: json["mediocomunicacionid"],
    tipomediocomunicacionid: json["tipomediocomunicacionid"],
    tipomediocomunicacion: json["tipomediocomunicacion"],
    valor: json["valor"],
    origenid: json["origenid"],
    origen: json["origen"],
    tipoprioridadid: json["tipoprioridadid"],
    tipoprioridad: json["tipoprioridad"],
    ciudadid: json["ciudadid"],
    ciudad: json["ciudad"],
    codigodiscado: json["codigodiscado"],
    estadoid: json["estadoid"],
    estado: json["estado"],
  );

  Map<String, dynamic> toJson() => {
    "clienteid": clienteid,
    "personaid": personaid,
    "contactoid": contactoid,
    "mediocomunicacionid": mediocomunicacionid,
    "tipomediocomunicacionid": tipomediocomunicacionid,
    "tipomediocomunicacion": tipomediocomunicacion,
    "valor": valor,
    "origenid": origenid,
    "origen": origen,
    "tipoprioridadid": tipoprioridadid,
    "tipoprioridad": tipoprioridad,
    "ciudadid": ciudadid,
    "ciudad": ciudad,
    "codigodiscado": codigodiscado,
    "estadoid": estadoid,
    "estado": estado,
  };

  static ContactMedia fromJsonModel(Map<String, dynamic> json) => ContactMedia.fromJson(json);
}
