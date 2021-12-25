import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class Contact {
  Contact({
    this.clientecontactoid,
    this.contactoak,
    this.clienteid,
    this.nombre,
    this.tipocontactoid,
    this.fechanacimiento,
    this.telefono,
    this.correo,
    this.tipocontacto,
  });

  @Id(assignable: true)
  int? clientecontactoid;
  int? contactoak;
  String? clienteid;
  String? nombre;
  int? tipocontactoid;
  String? fechanacimiento;
  String? telefono;
  String? correo;
  String? tipocontacto;

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    clientecontactoid: json["clientecontactoid"],
    contactoak: json["contactoak"],
    clienteid: json["clienteid"],
    nombre: json["nombre"],
    tipocontactoid: json["tipocontactoid"],
    fechanacimiento: json["fechanacimiento"],
    telefono: json["telefono"],
    correo: json["correo"],
    tipocontacto: json["tipocontacto"],
  );

  Map<String, dynamic> toJson() => {
    "clientecontactoid": clientecontactoid,
    "contactoak": contactoak,
    "clienteid": clienteid,
    "nombre": nombre,
    "tipocontactoid": tipocontactoid,
    "fechanacimiento": fechanacimiento,
    "telefono": telefono,
    "correo": correo,
    "tipocontacto": tipocontacto,
  };

  static Contact fromJsonModel(Map<String, dynamic> json) => Contact.fromJson(json);
}
