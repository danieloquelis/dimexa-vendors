
import 'dart:convert';

import 'package:objectbox/objectbox.dart';

///@{datos de cartera de los clientes}
@Entity()
class ClientWallet {
  ClientWallet({
    this.id,
    this.clienteid,
    this.zonaid,
    this.lineanormal,
    this.lineaespecial,
    this.lineatotal,
    this.lineadisponible,
    this.deuda,
  });

  int? id;
  @Index()
  String? clienteid;
  @Index()
  String? zonaid;
  String? lineanormal;
  String? lineaespecial;
  String? lineatotal;
  String? lineadisponible;
  String? deuda;

  factory ClientWallet.fromRawJson(String str) => ClientWallet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClientWallet.fromJson(Map<String, dynamic> json) => ClientWallet(
    clienteid: json["clienteid"],
    zonaid: json["zonaid"],
    lineanormal: json["lineanormal"],
    lineaespecial: json["lineaespecial"],
    lineatotal: json["lineatotal"],
    lineadisponible: json["lineadisponible"],
    deuda: json["deuda"],
  );

  Map<String, dynamic> toJson() => {
    "clienteid": clienteid,
    "zonaid": zonaid,
    "lineanormal": lineanormal,
    "lineaespecial": lineaespecial,
    "lineatotal": lineatotal,
    "lineadisponible": lineadisponible,
    "deuda": deuda,
  };

  static ClientWallet fromJsonModel(Map<String, dynamic> json) => ClientWallet.fromJson(json);
}
