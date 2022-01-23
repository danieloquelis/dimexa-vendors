import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class ContactRole {
  ContactRole({
    this.clienteid,
    this.personaid,
    this.contactoid,
    this.rolid,
    this.tiporolid,
    this.tiporol,
    this.estadoid,
    this.estado,
  });

  @Id(assignable: true)
  int? rolid;
  @Index()
  String? clienteid;
  int? personaid;
  @Index()
  int? contactoid;
  int? tiporolid;
  String? tiporol;
  int? estadoid;
  String? estado;

  factory ContactRole.fromRawJson(String str) => ContactRole.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContactRole.fromJson(Map<String, dynamic> json) => ContactRole(
    clienteid: json["clienteid"],
    personaid: json["personaid"],
    contactoid: json["contactoid"],
    rolid: json["rolid"],
    tiporolid: json["tiporolid"],
    tiporol: json["tiporol"],
    estadoid: json["estadoid"],
    estado: json["estado"],
  );

  Map<String, dynamic> toJson() => {
    "clienteid": clienteid,
    "personaid": personaid,
    "contactoid": contactoid,
    "rolid": rolid,
    "tiporolid": tiporolid,
    "tiporol": tiporol,
    "estadoid": estadoid,
    "estado": estado,
  };

  static ContactRole fromJsonModel(Map<String, dynamic> json) => ContactRole.fromJson(json);
}