import 'dart:convert';

import 'package:dimexa_vendors/data/models/menu/menu.dart';
import 'package:dimexa_vendors/data/models/role/role.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Session {
  int id;
  String? deviceToken; //serial number

  int? usuarioid;
  String? usuario;
  String? descripcion;
  String? correo;
  bool? activo;
  bool? bloqueado;
  int? motivobloqueoid;
  int? rolid;
  String? token;
  String? telefono;
  DateTime? creado;
  DateTime? actualizado;
  String? menuidFav1;
  String? menuidFav2;
  String? menuidFav3;
  @Transient()
  Role? rol;
  String? motivobloqueo;
  @Transient()
  Menu? menuFav1;
  @Transient()
  Menu? menuFav2;
  @Transient()
  Menu? menuFav3;
  @Transient()
  List<Menu>? menu;
  DateTime? fechaExpiracion;
  @Transient()
  List<Zone>? zona;
  final zones = ToMany<Zone>();

  int? tokenExpiracion;

  Session({
    this.id = 0,
    this.deviceToken,
    this.usuarioid,
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
    this.menu,
    this.fechaExpiracion,
    this.zona,
    this.tokenExpiracion,
  });

  // String? get dbUser => user != null ? user!.toRawJson() : null;
  // set dbUser(String? value) {
  //   if (value == null) {
  //     user = null;
  //   } else {
  //     user = User.fromRawJson(value);
  //   }
  // }

  factory Session.fromRawJson(String str) => Session.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory Session.fromJson(Map<String, dynamic> json) => Session(
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
    creado: json["creado"] != null ? DateTime.parse(json["creado"]) : null,
    actualizado: json["actualizado"],
    menuidFav1: json["menuid_fav1"],
    menuidFav2: json["menuid_fav2"],
    menuidFav3: json["menuid_fav3"],
    rol: json["rol"] != null ? Role.fromJson(json["rol"]) : null,
    motivobloqueo: json["motivobloqueo"],
    menuFav1: Menu.fromJson(json["menu_fav1"]),
    menuFav2: Menu.fromJson(json["menu_fav2"]),
    menuFav3: Menu.fromJson(json["menu_fav3"]),
    menu: json["menu"] != null ? List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))) : null,
    fechaExpiracion: json["fecha_expiracion"] != null ? DateTime.parse(json["fecha_expiracion"]) : null,
    zona: json["zona"] != null ? List<Zone>.from(json["zona"].map((x) => x)) : null,
    tokenExpiracion: json["token_expiracion"],
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
    "rol": rol != null ? rol!.toJson() : null,
    "motivobloqueo": motivobloqueo,
    "menu_fav1": menuFav1 != null ? menuFav1!.toJson() : null,
    "menu_fav2": menuFav2 != null ? menuFav2!.toJson() : null,
    "menu_fav3": menuFav3 != null ? menuFav3!.toJson() : null,
    "menu": menu != null ? List<dynamic>.from(menu!.map((x) => x.toJson())) : null,
    "fecha_expiracion": fechaExpiracion,
    "zona": zona != null ? List<dynamic>.from(zona!.map((x) => x)) : null,
    "token_expiracion": tokenExpiracion,
  };

  static Session fromJsonModel(Map<String, dynamic> json) => Session.fromJson(json);
}