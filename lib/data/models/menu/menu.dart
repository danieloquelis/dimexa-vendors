import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class Menu {
  Menu({
    this.id,
    this.menuid,
    this.titulo,
    this.ruta,
    this.orden,
    this.acceso,
  });

  int? id;
  String? menuid;
  String? titulo;
  String? ruta;
  int? orden;
  bool? acceso;

  factory Menu.fromRawJson(String str) => Menu.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    id: json["id"],
    menuid: json["menuid"],
    titulo: json["titulo"],
    ruta: json["ruta"],
    orden: json["orden"],
    acceso: json["acceso"] == null ? null : json["acceso"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "menuid": menuid,
    "titulo": titulo,
    "ruta": ruta,
    "orden": orden,
    "acceso": acceso == null ? null : acceso,
  };
}