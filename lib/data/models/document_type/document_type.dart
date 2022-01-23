import 'dart:convert';

import 'package:objectbox/objectbox.dart';

@Entity()
class DocumentType {
  DocumentType({
    this.id,
    this.tipodocumentoid,
    this.nombre,
    this.requiereruc,
    this.lastSync
  });

  int? id;
  String? tipodocumentoid;
  String? nombre;
  @Index()
  bool? requiereruc;
  DateTime? lastSync;

  factory DocumentType.fromRawJson(String str) => DocumentType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DocumentType.fromJson(Map<String, dynamic> json) => DocumentType(
    tipodocumentoid: json["tipodocumentoid"],
    nombre: json["nombre"],
    requiereruc: json["requiereruc"],
    lastSync: DateTime.now()
  );

  Map<String, dynamic> toJson() => {
    "tipodocumentoid": tipodocumentoid,
    "nombre": nombre,
    "requiereruc": requiereruc,
  };

  static DocumentType fromJsonModel(Map<String, dynamic> json) => DocumentType.fromJson(json);
}