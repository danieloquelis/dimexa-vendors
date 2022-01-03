import 'dart:convert';
import 'package:objectbox/objectbox.dart';

@Entity()
class Dashboard {
  Dashboard({
    this.id,
    this.zonaid,
    this.clientes,
    this.clientesCobertura,
    this.morosidad,
    this.cuotaMes,
    this.ventaMes,
    this.avanceMes,
    this.ventaMesAnt01,
    this.ventaMesAnt02,
    this.ventaMesAnt03,
    this.ventaMesAnt04,
    this.ventaMesAnt05,
    this.ventaMesAnt06,
    this.ventaMesAnt01Tit,
    this.ventaMesAnt02Tit,
    this.ventaMesAnt03Tit,
    this.ventaMesAnt04Tit,
    this.ventaMesAnt05Tit,
    this.ventaMesAnt06Tit,
  });

  int? id;
  @Index()
  String? zonaid;
  int? clientes;
  int? clientesCobertura;
  String? morosidad;
  String? cuotaMes;
  String? ventaMes;
  String? avanceMes;
  String? ventaMesAnt01;
  String? ventaMesAnt02;
  String? ventaMesAnt03;
  String? ventaMesAnt04;
  String? ventaMesAnt05;
  String? ventaMesAnt06;
  String? ventaMesAnt01Tit;
  String? ventaMesAnt02Tit;
  String? ventaMesAnt03Tit;
  String? ventaMesAnt04Tit;
  String? ventaMesAnt05Tit;
  String? ventaMesAnt06Tit;

  factory Dashboard.fromRawJson(String str) => Dashboard.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dashboard.fromJson(Map<String, dynamic> json) => Dashboard(
    zonaid: json["zonaid"],
    clientes: json["clientes"],
    clientesCobertura: json["clientes_cobertura"],
    morosidad: json["morosidad"],
    cuotaMes: json["cuota_mes"],
    ventaMes: json["venta_mes"],
    avanceMes: json["avance_mes"],
    ventaMesAnt01: json["venta_mes_ant_01"],
    ventaMesAnt02: json["venta_mes_ant_02"],
    ventaMesAnt03: json["venta_mes_ant_03"],
    ventaMesAnt04: json["venta_mes_ant_04"],
    ventaMesAnt05: json["venta_mes_ant_05"],
    ventaMesAnt06: json["venta_mes_ant_06"],
    ventaMesAnt01Tit: json["venta_mes_ant_01_tit"],
    ventaMesAnt02Tit: json["venta_mes_ant_02_tit"],
    ventaMesAnt03Tit: json["venta_mes_ant_03_tit"],
    ventaMesAnt04Tit: json["venta_mes_ant_04_tit"],
    ventaMesAnt05Tit: json["venta_mes_ant_05_tit"],
    ventaMesAnt06Tit: json["venta_mes_ant_06_tit"],
  );

  Map<String, dynamic> toJson() => {
    "zonaid": zonaid,
    "clientes": clientes,
    "clientes_cobertura": clientesCobertura,
    "morosidad": morosidad,
    "cuota_mes": cuotaMes,
    "venta_mes": ventaMes,
    "avance_mes": avanceMes,
    "venta_mes_ant_01": ventaMesAnt01,
    "venta_mes_ant_02": ventaMesAnt02,
    "venta_mes_ant_03": ventaMesAnt03,
    "venta_mes_ant_04": ventaMesAnt04,
    "venta_mes_ant_05": ventaMesAnt05,
    "venta_mes_ant_06": ventaMesAnt06,
    "venta_mes_ant_01_tit": ventaMesAnt01Tit,
    "venta_mes_ant_02_tit": ventaMesAnt02Tit,
    "venta_mes_ant_03_tit": ventaMesAnt03Tit,
    "venta_mes_ant_04_tit": ventaMesAnt04Tit,
    "venta_mes_ant_05_tit": ventaMesAnt05Tit,
    "venta_mes_ant_06_tit": ventaMesAnt06Tit,
  };

  static Dashboard fromJsonModel(Map<String, dynamic> json) => Dashboard.fromJson(json);
}
