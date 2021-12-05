import 'dart:convert';

import 'package:objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

@Entity()
class SubChannel {
  SubChannel({
    this.id,
    this.subcanalid,
    this.nombre,
  });

  int? id;
  @Index()
  String? subcanalid;
  String? nombre;
  final client = ToOne<Client>();

  factory SubChannel.fromRawJson(String str) => SubChannel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubChannel.fromJson(Map<String, dynamic> json) => SubChannel(
    subcanalid: json["subcanalid"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "subcanalid": subcanalid,
    "nombre": nombre,
  };
}