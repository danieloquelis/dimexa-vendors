import 'dart:convert';

import 'package:dimexa_vendors/data/models/menu/menu.dart';
import 'package:dimexa_vendors/data/models/user/user.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Session {
  int id;
  String? token;
  String? deviceToken; //serial number

  @Transient()
  User? user;
  final _user = ToOne<User>();

  @Transient()
  List<Menu>? menu;
  final _menu = ToMany<Menu>();

  @Transient()
  List<Zone>? zona;
  final _zone = ToMany<Zone>();

  int? tokenExpiracion;
  String? tokenFechaExpiracion;

  Session({
    this.id = 0,
    this.user,
    this.menu,
    this.zona,
    this.tokenExpiracion,
    this.token,
    this.tokenFechaExpiracion,
    this.deviceToken
  });

  String? get dbUser => user != null ? user!.toRawJson() : null;
  set dbUser(String? value) {
    if (value == null) {
      user = null;
    } else {
      user = User.fromRawJson(value);
    }
  }

  factory Session.fromRawJson(String str) => Session.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory Session.fromJson(Map<String, dynamic> json) => Session(
    user: User.fromJson(json["user"]),
    menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))),
    zona: List<Zone>.from(json["zona"].map((x) => Zone.fromJson(x))),
    tokenExpiracion: json["token_expiracion"],
    tokenFechaExpiracion: json["fecha_expiracion"]
  );

  Map<String, dynamic> toJson() => {
    "user": user!.toJson(),
    "menu": List<dynamic>.from(menu!.map((x) => x.toJson())),
    "zona": List<dynamic>.from(zona!.map((x) => x.toJson())),
    "token_expiracion": tokenExpiracion,
    "fecha_expiracion": tokenFechaExpiracion
  };

}