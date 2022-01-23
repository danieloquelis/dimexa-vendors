import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class Product {
  Product({
    this.id,
    this.zonaid,
    this.productoid,
    this.producto,
    this.productoidProv,
    this.unidadmedidaid,
    this.unidadmedida,
    this.sublineaid,
    this.sublinea,
    this.lineaid,
    this.linea,
    this.bpercepcion,
    this.blote,
    this.bpsicotropico,
    this.brefrigerado,
    this.stock,
    this.lotes,
    this.vencimientocorto,
    this.escalas,
    this.bonificaciones,
    this.lastSync
  });

  int? id;
  @Index()
  String? zonaid;
  @Index()
  String? productoid;
  String? producto;
  String? productoidProv;
  int? unidadmedidaid;
  String? unidadmedida;
  String? sublineaid;
  String? sublinea;
  String? lineaid;
  String? linea;
  bool? bpercepcion;
  bool? blote;
  bool? bpsicotropico;
  bool? brefrigerado;
  int? stock;
  int? lotes;
  bool? vencimientocorto;
  int? escalas;
  int? bonificaciones;
  DateTime? lastSync;

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    zonaid: json["zonaid"],
    productoid: json["productoid"],
    producto: json["producto"],
    productoidProv: json["productoid_prov"],
    unidadmedidaid: json["unidadmedidaid"],
    unidadmedida: json["unidadmedida"],
    sublineaid: json["sublineaid"],
    sublinea: json["sublinea"],
    lineaid: json["lineaid"],
    linea: json["linea"],
    bpercepcion: json["bpercepcion"],
    blote: json["blote"],
    bpsicotropico: json["bpsicotropico"],
    brefrigerado: json["brefrigerado"],
    stock: json["stock"],
    lotes: json["lotes"],
    vencimientocorto: json["vencimientocorto"],
    escalas: json["escalas"],
    bonificaciones: json["bonificaciones"],
    lastSync: DateTime.now()
  );

  Map<String, dynamic> toJson() => {
    "zonaid": zonaid,
    "productoid": productoid,
    "producto": producto,
    "productoid_prov": productoidProv,
    "unidadmedidaid": unidadmedidaid,
    "unidadmedida": unidadmedida,
    "sublineaid": sublineaid,
    "sublinea": sublinea,
    "lineaid": lineaid,
    "linea": linea,
    "bpercepcion": bpercepcion,
    "blote": blote,
    "bpsicotropico": bpsicotropico,
    "brefrigerado": brefrigerado,
    "stock": stock,
    "lotes": lotes,
    "vencimientocorto": vencimientocorto,
    "escalas": escalas,
    "bonificaciones": bonificaciones,
  };

  static Product fromJsonModel(Map<String, dynamic> json) => Product.fromJson(json);
}
