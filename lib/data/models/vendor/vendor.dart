// To parse this JSON data, do
//
//     final vendor = vendorFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

Vendor vendorFromJson(String str) => Vendor.fromJson(json.decode(str));

String vendorToJson(Vendor data) => json.encode(data.toJson());

@Entity()
class Vendor {
  int id = 0;

  String username;
  String password;
  String name;
  String zone;

  Vendor({
    required this.username,
    required this.password,
    required this.name,
    required this.zone,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
    username: json["username"],
    password: json["password"],
    name: json["name"],
    zone: json["zone"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "name": name,
    "zone": zone,
  };
}
