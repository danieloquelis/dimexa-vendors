import 'dart:convert';

import 'package:dimexa_vendors/data/models/menu_fav/menu_fav.dart';
import 'package:dimexa_vendors/data/models/role/role.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  User({
    this.usuarioid = 0,
    this.usuario,
    this.descripcion,
    this.correo,
    this.activo,
    this.bloqueado,
    this.motivobloqueoid,
    this.rolid,
    this.token,
    this.telefono,
    this.creado,
    this.actualizado,
    this.menuidFav1,
    this.menuidFav2,
    this.menuidFav3,
    this.rol,
    this.motivobloqueo,
    this.menuFav1,
    this.menuFav2,
    this.menuFav3,
  });

  @Id()
  int usuarioid;
  String? usuario;
  String? descripcion;
  String? correo;
  bool? activo;
  bool? bloqueado;
  dynamic motivobloqueoid;
  int? rolid;
  String? token;
  String? telefono;
  String? creado;
  dynamic actualizado;
  String? menuidFav1;
  String? menuidFav2;
  String? menuidFav3;

  @Transient()
  Role? rol;
  final _role = ToOne<Role>();

  dynamic motivobloqueo;

  @Transient()
  MenuFav? menuFav1;
  final _menuFav1 = ToOne<MenuFav>();

  @Transient()
  MenuFav? menuFav2;
  final _menuFav2 = ToOne<MenuFav>();

  @Transient()
  MenuFav? menuFav3;
  final _menuFav3 = ToOne<MenuFav>();


  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    usuarioid: json["usuarioid"],
    usuario: json["usuario"],
    descripcion: json["descripcion"],
    correo: json["correo"],
    activo: json["activo"],
    bloqueado: json["bloqueado"],
    motivobloqueoid: json["motivobloqueoid"],
    rolid: json["rolid"],
    token: json["token"],
    telefono: json["telefono"],
    creado: json["creado"],
    actualizado: json["actualizado"],
    menuidFav1: json["menuid_fav1"],
    menuidFav2: json["menuid_fav2"],
    menuidFav3: json["menuid_fav3"],
    rol: Role.fromJson(json["rol"]),
    motivobloqueo: json["motivobloqueo"],
    menuFav1: MenuFav.fromJson(json["menu_fav1"]),
    menuFav2: MenuFav.fromJson(json["menu_fav2"]),
    menuFav3: MenuFav.fromJson(json["menu_fav3"]),
  );

  Map<String, dynamic> toJson() => {
    "usuarioid": usuarioid,
    "usuario": usuario,
    "descripcion": descripcion,
    "correo": correo,
    "activo": activo,
    "bloqueado": bloqueado,
    "motivobloqueoid": motivobloqueoid,
    "rolid": rolid,
    "token": token,
    "telefono": telefono,
    "creado": creado,
    "actualizado": actualizado,
    "menuid_fav1": menuidFav1,
    "menuid_fav2": menuidFav2,
    "menuid_fav3": menuidFav3,
    "rol": rol!.toJson(),
    "motivobloqueo": motivobloqueo,
    "menu_fav1": menuFav1!.toJson(),
    "menu_fav2": menuFav2!.toJson(),
    "menu_fav3": menuFav3!.toJson(),
  };
}