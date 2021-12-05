import 'dart:convert';

import 'package:dimexa_vendors/data/models/client_status/client_status.dart';
import 'package:dimexa_vendors/data/models/diremid_status/diremid_status.dart';
import 'package:dimexa_vendors/data/models/discount_type/discount_type.dart';
import 'package:dimexa_vendors/data/models/sub_channel/sub_channel.dart';
import 'package:dimexa_vendors/data/models/ubigeo/ubigeo.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Client {
  Client({
    this.id = 0,
    this.clienteid,
    this.unidadnegocioid,
    this.ruc,
    this.razonsocial,
    this.nombrecomercial,
    this.zonaid,
    this.ubigeoid,
    this.direccion,
    this.estadoclienteid,
    this.estadodiremidid,
    this.condicionventaid,
    this.tipodescuentoid,
    this.subcanalid,
    this.diavisita1,
    this.diavisita2,
    this.representantelegal,
    this.dni,
    this.aniversario,
    this.telefono,
    this.movil,
    this.lineacredito,
    this.deuda,
    this.lineadisponible,
    this.ubigeo,
    this.estadocliente,
    this.estadodiremid,
    this.tipodescuento,
    this.subcanal,
    this.lastSync
  }){
    if (ubigeo != null) {
      ubigee.clear();
      ubigee.add(ubigeo!);
    }
    if (estadocliente != null) {
      clientStatus.clear();
      clientStatus.add(estadocliente!);
    }
    if (estadodiremid != null) {
      diremidStatus.clear();
      diremidStatus.add(estadodiremid!);
    }
    if (tipodescuento != null) {
      discountType.clear();
      discountType.add(tipodescuento!);
    }
    if (subcanal != null) {
      subChannel.clear();
      subChannel.add(subcanal!);
    }
  }

  @Id(assignable: true)
  int id;
  @Index()
  String? clienteid;
  String? unidadnegocioid;
  String? ruc;
  String? razonsocial;
  String? nombrecomercial;
  @Index()
  String? zonaid;
  String? ubigeoid;
  String? direccion;
  String? estadoclienteid;
  String? estadodiremidid;
  String? condicionventaid;
  String? tipodescuentoid;
  String? subcanalid;
  String? diavisita1;
  String? diavisita2;
  String? representantelegal;
  String? dni;
  DateTime? aniversario;
  String? telefono;
  String? movil;
  String? lineacredito;
  String? deuda;
  String? lineadisponible;

  @Transient()
  Ubigeo? ubigeo;
  final ubigee = ToMany<Ubigeo>();

  @Transient()
  ClientStatus? estadocliente;
  @Backlink('client')
  final clientStatus = ToMany<ClientStatus>();

  @Transient()
  DiremidStatus? estadodiremid;
  @Backlink('client')
  final diremidStatus = ToMany<DiremidStatus>();

  @Transient()
  DiscountType? tipodescuento;
  @Backlink('client')
  final discountType = ToMany<DiscountType>();

  @Transient()
  SubChannel? subcanal;
  @Backlink('client')
  final subChannel = ToMany<SubChannel>();

  DateTime? lastSync;

  factory Client.fromRawJson(String str) => Client.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    id: json["id"],
    clienteid: json["clienteid"],
    unidadnegocioid: json["unidadnegocioid"],
    ruc: json["ruc"],
    razonsocial: json["razonsocial"],
    nombrecomercial: json["nombrecomercial"],
    zonaid: json["zonaid"],
    ubigeoid: json["ubigeoid"],
    direccion: json["direccion"],
    estadoclienteid: json["estadoclienteid"],
    estadodiremidid: json["estadodiremidid"],
    condicionventaid: json["condicionventaid"],
    tipodescuentoid: json["tipodescuentoid"],
    subcanalid: json["subcanalid"],
    diavisita1: json["diavisita1"],
    diavisita2: json["diavisita2"],
    representantelegal: json["representantelegal"] == null ? null : json["representantelegal"],
    dni: json["dni"],
    aniversario: json["aniversario"] == null ? null : DateTime.parse(json["aniversario"]),
    telefono: json["telefono"],
    movil: json["movil"],
    lineacredito: json["lineacredito"],
    deuda: json["deuda"],
    lineadisponible: json["lineadisponible"],
    ubigeo: Ubigeo.fromJson(json["ubigeo"]),
    estadocliente: ClientStatus.fromJson(json["estadocliente"]),
    estadodiremid: DiremidStatus.fromJson(json["estadodiremid"]),
    tipodescuento: DiscountType.fromJson(json["tipodescuento"]),
    subcanal: SubChannel.fromJson(json["subcanal"]),
    lastSync: DateTime.now()
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "clienteid": clienteid,
    "unidadnegocioid": unidadnegocioid,
    "ruc": ruc,
    "razonsocial": razonsocial,
    "nombrecomercial": nombrecomercial,
    "zonaid": zonaid,
    "ubigeoid": ubigeoid,
    "direccion": direccion,
    "estadoclienteid": estadoclienteid,
    "estadodiremidid": estadodiremidid,
    "condicionventaid": condicionventaid,
    "tipodescuentoid": tipodescuentoid,
    "subcanalid": subcanalid,
    "diavisita1": diavisita1,
    "diavisita2": diavisita2,
    "representantelegal": representantelegal == null ? null : representantelegal!,
    "dni": dni,
    "aniversario": null,//aniversario == null ? null : "${aniversario!.year.toString().padLeft(4, '0')}-${aniversario.month.toString().padLeft(2, '0')}-${aniversario.day.toString().padLeft(2, '0')}",
    "telefono": telefono,
    "movil": movil,
    "lineacredito": lineacredito,
    "deuda": deuda,
    "lineadisponible": lineadisponible,
    "ubigeo": ubigeo != null ? ubigeo!.toJson() : null,
    "estadocliente": estadocliente != null ? estadocliente!.toJson() : null,
    "estadodiremid": estadodiremid != null ? estadodiremid!.toJson() : null,
    "tipodescuento": tipodescuento != null ? tipodescuento!.toJson() : null,
    "subcanal": subcanal != null ? subcanal!.toJson() : null,
  };

  static Client fromJsonModel(Map<String, dynamic> json) => Client.fromJson(json);
}
