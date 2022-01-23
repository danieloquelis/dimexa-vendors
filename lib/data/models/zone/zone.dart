import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class Zone {
  Zone({
    this.zonaid,
    this.nombre,
    this.vendedorid,
    this.vendedor,
    this.canalid,
    this.canal,
    this.subcanalid,
    this.subcanal,
    this.unidadnegocioid,
    this.unidadnegocio,
    this.activo,
    this.especial,
  });

  int? id;
  @Index()
  String? zonaid;
  String? nombre;
  String? vendedorid;
  String? vendedor;
  String? canalid;
  String? canal;
  String? subcanalid;
  String? subcanal;
  String? unidadnegocioid;
  String? unidadnegocio;
  bool? activo;
  bool? especial;

  factory Zone.fromRawJson(String str) => Zone.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Zone.fromJson(Map<String, dynamic> json) => Zone(
    zonaid: json["zonaid"],
    nombre: json["nombre"],
    vendedorid: json["vendedorid"],
    vendedor: json["vendedor"],
    canalid: json["canalid"],
    canal: json["canal"],
    subcanalid: json["subcanalid"],
    subcanal: json["subcanal"],
    unidadnegocioid: json["unidadnegocioid"],
    unidadnegocio: json["unidadnegocio"],
    activo: json["activo"],
    especial: json["especial"],
  );

  Map<String, dynamic> toJson() => {
    "zonaid": zonaid,
    "nombre": nombre,
    "vendedorid": vendedorid,
    "vendedor": vendedor,
    "canalid": canalid,
    "canal": canal,
    "subcanalid": subcanalid,
    "subcanal": subcanal,
    "unidadnegocioid": unidadnegocioid,
    "unidadnegocio": unidadnegocio,
    "activo": activo,
    "especial": especial,
  };

  static Zone fromJsonModel(Map<String, dynamic> json) => Zone.fromJson(json);
}
