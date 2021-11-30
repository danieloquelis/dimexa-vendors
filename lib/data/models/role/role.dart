import 'dart:convert';

import 'package:dimexa_vendors/data/models/role_menu/role_menu.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Role {
  Role({
    this.rolid,
    this.nombre,
    this.rolmenu,
  });

  @Id()
  int? rolid;
  String? nombre;

  @Transient()
  RoleMenu? rolmenu;
  final roleMenu = ToOne<RoleMenu>();

  factory Role.fromRawJson(String str) => Role.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    rolid: json["rolid"],
    nombre: json["nombre"],
    rolmenu: RoleMenu.fromJson(json["rolmenu"]),
  );

  Map<String, dynamic> toJson() => {
    "rolid": rolid,
    "nombre": nombre,
    "rolmenu": rolmenu!.toJson(),
  };
}
