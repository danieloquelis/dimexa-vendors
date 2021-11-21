// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../models/client/client.dart';
import '../../models/vendor/vendor.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8451326358372512795),
      name: 'Client',
      lastPropertyId: const IdUid(31, 853859760880490785),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5370579470967932413),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 543753130221913047),
            name: 'sid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4555648619462888894),
            name: 'clienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8912439162808650761),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1614959971246544139),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2251637732229316721),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 571686085493543907),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5043848838743244149),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 1861232986970636979),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 3877283719175014821),
            name: 'ubiego',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1748339938719870819),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 8189533106552249287),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 7197723835752718023),
            name: 'estadocliente',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 668135183012753135),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 8513046178782686779),
            name: 'estadodiremid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 4062641252965005705),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 2927152007579667332),
            name: 'condicionventa',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 7251365764058856677),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 7147761689338325892),
            name: 'tipodescuento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 1347321135238261513),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 5566527552707902626),
            name: 'subcanal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 3441842572872286430),
            name: 'diavisita1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 1068850700649547233),
            name: 'diavisita2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 1045729228967459905),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 8260865337049515433),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 1036728431792935071),
            name: 'aniversario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(27, 4719581644827579405),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(28, 8777049637128002301),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(29, 1467858914206166381),
            name: 'lineacredito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(30, 3468984075225884188),
            name: 'deuda',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(31, 853859760880490785),
            name: 'lineadisponible',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 977939182893081520),
      name: 'Vendor',
      lastPropertyId: const IdUid(5, 7863425499026272200),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8533907383166647241),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1795807241614746312),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3183782017449183441),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4745844167298325435),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 7863425499026272200),
            name: 'zone',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 977939182893081520),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Client: EntityDefinition<Client>(
        model: _entities[0],
        toOneRelations: (Client object) => [],
        toManyRelations: (Client object) => {},
        getId: (Client object) => object.id,
        setId: (Client object, int id) {
          object.id = id;
        },
        objectToFB: (Client object, fb.Builder fbb) {
          final sidOffset = fbb.writeString(object.sid);
          final clienteidOffset = fbb.writeString(object.clienteid);
          final unidadnegocioidOffset = fbb.writeString(object.unidadnegocioid);
          final rucOffset = fbb.writeString(object.ruc);
          final razonsocialOffset = fbb.writeString(object.razonsocial);
          final nombrecomercialOffset = fbb.writeString(object.nombrecomercial);
          final zonaidOffset = fbb.writeString(object.zonaid);
          final ubigeoidOffset = fbb.writeString(object.ubigeoid);
          final ubiegoOffset = fbb.writeString(object.ubiego);
          final direccionOffset = fbb.writeString(object.direccion);
          final estadoclienteidOffset = fbb.writeString(object.estadoclienteid);
          final estadoclienteOffset = fbb.writeString(object.estadocliente);
          final estadodiremididOffset = fbb.writeString(object.estadodiremidid);
          final estadodiremidOffset = fbb.writeString(object.estadodiremid);
          final condicionventaidOffset =
              fbb.writeString(object.condicionventaid);
          final condicionventaOffset = fbb.writeString(object.condicionventa);
          final tipodescuentoidOffset = fbb.writeString(object.tipodescuentoid);
          final tipodescuentoOffset = fbb.writeString(object.tipodescuento);
          final subcanalidOffset = fbb.writeString(object.subcanalid);
          final subcanalOffset = fbb.writeString(object.subcanal);
          final diavisita1Offset = fbb.writeString(object.diavisita1);
          final diavisita2Offset = fbb.writeString(object.diavisita2);
          final representantelegalOffset =
              fbb.writeString(object.representantelegal);
          final dniOffset = fbb.writeString(object.dni);
          final aniversarioOffset = fbb.writeString(object.aniversario);
          final telefonoOffset = fbb.writeString(object.telefono);
          final movilOffset = fbb.writeString(object.movil);
          final lineacreditoOffset = fbb.writeString(object.lineacredito);
          final deudaOffset = fbb.writeString(object.deuda);
          final lineadisponibleOffset = fbb.writeString(object.lineadisponible);
          fbb.startTable(32);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, sidOffset);
          fbb.addOffset(2, clienteidOffset);
          fbb.addOffset(3, unidadnegocioidOffset);
          fbb.addOffset(4, rucOffset);
          fbb.addOffset(5, razonsocialOffset);
          fbb.addOffset(6, nombrecomercialOffset);
          fbb.addOffset(7, zonaidOffset);
          fbb.addOffset(8, ubigeoidOffset);
          fbb.addOffset(9, ubiegoOffset);
          fbb.addOffset(10, direccionOffset);
          fbb.addOffset(11, estadoclienteidOffset);
          fbb.addOffset(12, estadoclienteOffset);
          fbb.addOffset(13, estadodiremididOffset);
          fbb.addOffset(14, estadodiremidOffset);
          fbb.addOffset(15, condicionventaidOffset);
          fbb.addOffset(16, condicionventaOffset);
          fbb.addOffset(17, tipodescuentoidOffset);
          fbb.addOffset(18, tipodescuentoOffset);
          fbb.addOffset(19, subcanalidOffset);
          fbb.addOffset(20, subcanalOffset);
          fbb.addOffset(21, diavisita1Offset);
          fbb.addOffset(22, diavisita2Offset);
          fbb.addOffset(23, representantelegalOffset);
          fbb.addOffset(24, dniOffset);
          fbb.addOffset(25, aniversarioOffset);
          fbb.addOffset(26, telefonoOffset);
          fbb.addOffset(27, movilOffset);
          fbb.addOffset(28, lineacreditoOffset);
          fbb.addOffset(29, deudaOffset);
          fbb.addOffset(30, lineadisponibleOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Client(
              sid: const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              clienteid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              unidadnegocioid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              ruc:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''),
              razonsocial:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''),
              nombrecomercial:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 16, ''),
              zonaid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 18, ''),
              ubigeoid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 20, ''),
              ubiego:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 22, ''),
              direccion:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 24, ''),
              estadoclienteid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 26, ''),
              estadocliente:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 28, ''),
              estadodiremidid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 30, ''),
              estadodiremid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 32, ''),
              condicionventaid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 34, ''),
              condicionventa:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 36, ''),
              tipodescuentoid:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 38, ''),
              tipodescuento:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 40, ''),
              subcanalid: const fb.StringReader().vTableGet(buffer, rootOffset, 42, ''),
              subcanal: const fb.StringReader().vTableGet(buffer, rootOffset, 44, ''),
              diavisita1: const fb.StringReader().vTableGet(buffer, rootOffset, 46, ''),
              diavisita2: const fb.StringReader().vTableGet(buffer, rootOffset, 48, ''),
              representantelegal: const fb.StringReader().vTableGet(buffer, rootOffset, 50, ''),
              dni: const fb.StringReader().vTableGet(buffer, rootOffset, 52, ''),
              aniversario: const fb.StringReader().vTableGet(buffer, rootOffset, 54, ''),
              telefono: const fb.StringReader().vTableGet(buffer, rootOffset, 56, ''),
              movil: const fb.StringReader().vTableGet(buffer, rootOffset, 58, ''),
              lineacredito: const fb.StringReader().vTableGet(buffer, rootOffset, 60, ''),
              deuda: const fb.StringReader().vTableGet(buffer, rootOffset, 62, ''),
              lineadisponible: const fb.StringReader().vTableGet(buffer, rootOffset, 64, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        }),
    Vendor: EntityDefinition<Vendor>(
        model: _entities[1],
        toOneRelations: (Vendor object) => [],
        toManyRelations: (Vendor object) => {},
        getId: (Vendor object) => object.id,
        setId: (Vendor object, int id) {
          object.id = id;
        },
        objectToFB: (Vendor object, fb.Builder fbb) {
          final usernameOffset = fbb.writeString(object.username);
          final passwordOffset = fbb.writeString(object.password);
          final nameOffset = fbb.writeString(object.name);
          final zoneOffset = fbb.writeString(object.zone);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, usernameOffset);
          fbb.addOffset(2, passwordOffset);
          fbb.addOffset(3, nameOffset);
          fbb.addOffset(4, zoneOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Vendor(
              username:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 6, ''),
              password:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              name:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              zone:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Client] entity fields to define ObjectBox queries.
class Client_ {
  /// see [Client.id]
  static final id = QueryIntegerProperty<Client>(_entities[0].properties[0]);

  /// see [Client.sid]
  static final sid = QueryStringProperty<Client>(_entities[0].properties[1]);

  /// see [Client.clienteid]
  static final clienteid =
      QueryStringProperty<Client>(_entities[0].properties[2]);

  /// see [Client.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Client>(_entities[0].properties[3]);

  /// see [Client.ruc]
  static final ruc = QueryStringProperty<Client>(_entities[0].properties[4]);

  /// see [Client.razonsocial]
  static final razonsocial =
      QueryStringProperty<Client>(_entities[0].properties[5]);

  /// see [Client.nombrecomercial]
  static final nombrecomercial =
      QueryStringProperty<Client>(_entities[0].properties[6]);

  /// see [Client.zonaid]
  static final zonaid = QueryStringProperty<Client>(_entities[0].properties[7]);

  /// see [Client.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Client>(_entities[0].properties[8]);

  /// see [Client.ubiego]
  static final ubiego = QueryStringProperty<Client>(_entities[0].properties[9]);

  /// see [Client.direccion]
  static final direccion =
      QueryStringProperty<Client>(_entities[0].properties[10]);

  /// see [Client.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<Client>(_entities[0].properties[11]);

  /// see [Client.estadocliente]
  static final estadocliente =
      QueryStringProperty<Client>(_entities[0].properties[12]);

  /// see [Client.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<Client>(_entities[0].properties[13]);

  /// see [Client.estadodiremid]
  static final estadodiremid =
      QueryStringProperty<Client>(_entities[0].properties[14]);

  /// see [Client.condicionventaid]
  static final condicionventaid =
      QueryStringProperty<Client>(_entities[0].properties[15]);

  /// see [Client.condicionventa]
  static final condicionventa =
      QueryStringProperty<Client>(_entities[0].properties[16]);

  /// see [Client.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<Client>(_entities[0].properties[17]);

  /// see [Client.tipodescuento]
  static final tipodescuento =
      QueryStringProperty<Client>(_entities[0].properties[18]);

  /// see [Client.subcanalid]
  static final subcanalid =
      QueryStringProperty<Client>(_entities[0].properties[19]);

  /// see [Client.subcanal]
  static final subcanal =
      QueryStringProperty<Client>(_entities[0].properties[20]);

  /// see [Client.diavisita1]
  static final diavisita1 =
      QueryStringProperty<Client>(_entities[0].properties[21]);

  /// see [Client.diavisita2]
  static final diavisita2 =
      QueryStringProperty<Client>(_entities[0].properties[22]);

  /// see [Client.representantelegal]
  static final representantelegal =
      QueryStringProperty<Client>(_entities[0].properties[23]);

  /// see [Client.dni]
  static final dni = QueryStringProperty<Client>(_entities[0].properties[24]);

  /// see [Client.aniversario]
  static final aniversario =
      QueryStringProperty<Client>(_entities[0].properties[25]);

  /// see [Client.telefono]
  static final telefono =
      QueryStringProperty<Client>(_entities[0].properties[26]);

  /// see [Client.movil]
  static final movil = QueryStringProperty<Client>(_entities[0].properties[27]);

  /// see [Client.lineacredito]
  static final lineacredito =
      QueryStringProperty<Client>(_entities[0].properties[28]);

  /// see [Client.deuda]
  static final deuda = QueryStringProperty<Client>(_entities[0].properties[29]);

  /// see [Client.lineadisponible]
  static final lineadisponible =
      QueryStringProperty<Client>(_entities[0].properties[30]);
}

/// [Vendor] entity fields to define ObjectBox queries.
class Vendor_ {
  /// see [Vendor.id]
  static final id = QueryIntegerProperty<Vendor>(_entities[1].properties[0]);

  /// see [Vendor.username]
  static final username =
      QueryStringProperty<Vendor>(_entities[1].properties[1]);

  /// see [Vendor.password]
  static final password =
      QueryStringProperty<Vendor>(_entities[1].properties[2]);

  /// see [Vendor.name]
  static final name = QueryStringProperty<Vendor>(_entities[1].properties[3]);

  /// see [Vendor.zone]
  static final zone = QueryStringProperty<Vendor>(_entities[1].properties[4]);
}
