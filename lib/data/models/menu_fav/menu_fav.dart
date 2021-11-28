import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class MenuFav {
  MenuFav({
    this.id,
    this.menuid,
    this.titulo,
    this.ruta,
    this.orden,
  });

  int? id;
  String? menuid;
  String? titulo;
  String? ruta;
  int? orden;

  factory MenuFav.fromRawJson(String str) => MenuFav.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory MenuFav.fromJson(Map<String, dynamic> json) => MenuFav(
    id: json["id"],
    menuid: json["menuid"],
    titulo: json["titulo"],
    ruta: json["ruta"],
    orden: json["orden"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "menuid": menuid,
    "titulo": titulo,
    "ruta": ruta,
    "orden": orden,
  };
}