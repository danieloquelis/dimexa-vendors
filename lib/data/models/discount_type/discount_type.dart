import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

@Entity()
class DiscountType {
  DiscountType({
    this.id,
    this.tipodescuentoid,
    this.nombre,
  });

  int? id;
  @Index()
  String? tipodescuentoid;
  String? nombre;
  final client = ToOne<Client>();

  factory DiscountType.fromRawJson(String str) => DiscountType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DiscountType.fromJson(Map<String, dynamic> json) => DiscountType(
    tipodescuentoid: json["tipodescuentoid"],
    nombre: json["nombre"],
  );

  Map<String, dynamic> toJson() => {
    "tipodescuentoid": tipodescuentoid,
    "nombre": nombre,
  };
}