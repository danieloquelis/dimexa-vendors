import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class RoleMenu {
  RoleMenu({
    this.rolmenuid,
    this.rolid,
    this.menuid,
    this.registrado,
  });

  @Id()
  int? rolmenuid;
  int? rolid;
  String? menuid;
  String? registrado;

  factory RoleMenu.fromRawJson(String str) => RoleMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RoleMenu.fromJson(Map<String, dynamic> json) => RoleMenu(
    rolmenuid: json["rolmenuid"],
    rolid: json["rolid"],
    menuid: json["menuid"],
    registrado: json["registrado"],
  );

  Map<String, dynamic> toJson() => {
    "rolmenuid": rolmenuid,
    "rolid": rolid,
    "menuid": menuid,
    "registrado": registrado,
  };
}
