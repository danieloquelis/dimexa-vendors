// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../models/client/client.dart';
import '../../models/menu/menu.dart';
import '../../models/menu_fav/menu_fav.dart';
import '../../models/role/role.dart';
import '../../models/role_menu/role_menu.dart';
import '../../models/session/session.dart';
import '../../models/user/user.dart';
import '../../models/vendor/vendor.dart';
import '../../models/zone/zone.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 7827792682537542356),
      name: 'Client',
      lastPropertyId: const IdUid(31, 2006384787536521197),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7499095964773598351),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1078171312649380677),
            name: 'sid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5494269968643173418),
            name: 'clienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1418746832389007897),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1347622673250435150),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 4767327484796979067),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2297601649513353383),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 8099431068375747004),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 1712864322817772294),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 180154809039959628),
            name: 'ubiego',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 8105057636979149192),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 6900090520672475050),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1589643366156905489),
            name: 'estadocliente',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 6694808411841471058),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 6112895877654133809),
            name: 'estadodiremid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 8564645767231021481),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 4694008657433235276),
            name: 'condicionventa',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 4215876263786110284),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 1428479610932860179),
            name: 'tipodescuento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 8407834063774372768),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 1477766249913737071),
            name: 'subcanal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 1645160209721276569),
            name: 'diavisita1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 4135970447469208586),
            name: 'diavisita2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 8061052445897426073),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 8342974436821618880),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 8214219683013490749),
            name: 'aniversario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(27, 7479747081586866799),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(28, 5253304612724892309),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(29, 9127201568985565860),
            name: 'lineacredito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(30, 5354677652869197406),
            name: 'deuda',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(31, 2006384787536521197),
            name: 'lineadisponible',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 2335793345639528813),
      name: 'Menu',
      lastPropertyId: const IdUid(6, 4270794736554356681),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3717900631694996534),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7968890599996677248),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8590769032988766897),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2088444295287152074),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8035125527398027117),
            name: 'orden',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 4270794736554356681),
            name: 'acceso',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 2805885522402580108),
      name: 'MenuFav',
      lastPropertyId: const IdUid(5, 1166521172158629477),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7038568910076747224),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4138723443133898364),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 589886192918347546),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1009054758908958698),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1166521172158629477),
            name: 'orden',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 6793392151252572528),
      name: 'Role',
      lastPropertyId: const IdUid(3, 7802593179643900699),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6396513460684602762),
            name: 'rolid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2371928876078054984),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7802593179643900699),
            name: 'roleMenuId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 547043509654003447),
            relationTarget: 'RoleMenu')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 442357790486523995),
      name: 'RoleMenu',
      lastPropertyId: const IdUid(4, 160593146088424442),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1189235417961193198),
            name: 'rolmenuid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 546116222134303642),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8925504809642908188),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 160593146088424442),
            name: 'registrado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 6151585397788577567),
      name: 'Session',
      lastPropertyId: const IdUid(6, 6443572765073960420),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 9182102959306235163),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7712046386587041564),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8311723558601884945),
            name: 'deviceToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5160556913169029243),
            name: 'tokenExpiracion',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6349726590292299656),
            name: 'tokenFechaExpiracion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6443572765073960420),
            name: 'dbUser',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 7641369394727779833),
      name: 'User',
      lastPropertyId: const IdUid(13, 7322338455193439824),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6527744668146865315),
            name: 'usuarioid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5180998872378592887),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3343959727196756120),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3060568064847395453),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1035267387961930912),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7160435513761820751),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3050591922468198680),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 1289478124856031034),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 1071432000870281264),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 6500094004088060933),
            name: 'creado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 7422023328539525164),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 2816996585630701096),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 7322338455193439824),
            name: 'menuidFav3',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 8372283932162198765),
      name: 'Vendor',
      lastPropertyId: const IdUid(5, 8679954624990017928),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7344089791438697706),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7295545098753723140),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4157936343046998111),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3805995195612080332),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8679954624990017928),
            name: 'zone',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 7827384564438691288),
      name: 'Zone',
      lastPropertyId: const IdUid(8, 8427316668985352743),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5052102583756772646),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 428298315821380347),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7712426766384946516),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6008737871919081602),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8249007308678201593),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2208100972199539414),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 8624897363565636297),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 8427316668985352743),
            name: 'activo',
            type: 1,
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
      lastEntityId: const IdUid(9, 7827384564438691288),
      lastIndexId: const IdUid(1, 547043509654003447),
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
    Menu: EntityDefinition<Menu>(
        model: _entities[1],
        toOneRelations: (Menu object) => [],
        toManyRelations: (Menu object) => {},
        getId: (Menu object) => object.id,
        setId: (Menu object, int id) {
          object.id = id;
        },
        objectToFB: (Menu object, fb.Builder fbb) {
          final menuidOffset =
              object.menuid == null ? null : fbb.writeString(object.menuid!);
          final tituloOffset =
              object.titulo == null ? null : fbb.writeString(object.titulo!);
          final rutaOffset =
              object.ruta == null ? null : fbb.writeString(object.ruta!);
          fbb.startTable(7);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, menuidOffset);
          fbb.addOffset(2, tituloOffset);
          fbb.addOffset(3, rutaOffset);
          fbb.addInt64(4, object.orden);
          fbb.addBool(5, object.acceso);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Menu(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              menuid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              titulo: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              ruta: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              orden: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              acceso: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 14));

          return object;
        }),
    MenuFav: EntityDefinition<MenuFav>(
        model: _entities[2],
        toOneRelations: (MenuFav object) => [],
        toManyRelations: (MenuFav object) => {},
        getId: (MenuFav object) => object.id,
        setId: (MenuFav object, int id) {
          object.id = id;
        },
        objectToFB: (MenuFav object, fb.Builder fbb) {
          final menuidOffset =
              object.menuid == null ? null : fbb.writeString(object.menuid!);
          final tituloOffset =
              object.titulo == null ? null : fbb.writeString(object.titulo!);
          final rutaOffset =
              object.ruta == null ? null : fbb.writeString(object.ruta!);
          fbb.startTable(6);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, menuidOffset);
          fbb.addOffset(2, tituloOffset);
          fbb.addOffset(3, rutaOffset);
          fbb.addInt64(4, object.orden);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = MenuFav(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              menuid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              titulo: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              ruta: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              orden: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12));

          return object;
        }),
    Role: EntityDefinition<Role>(
        model: _entities[3],
        toOneRelations: (Role object) => [object.roleMenu],
        toManyRelations: (Role object) => {},
        getId: (Role object) => object.rolid,
        setId: (Role object, int id) {
          object.rolid = id;
        },
        objectToFB: (Role object, fb.Builder fbb) {
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(4);
          fbb.addInt64(0, object.rolid ?? 0);
          fbb.addOffset(1, nombreOffset);
          fbb.addInt64(2, object.roleMenu.targetId);
          fbb.finish(fbb.endTable());
          return object.rolid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Role(
              rolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6));
          object.roleMenu.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.roleMenu.attach(store);
          return object;
        }),
    RoleMenu: EntityDefinition<RoleMenu>(
        model: _entities[4],
        toOneRelations: (RoleMenu object) => [],
        toManyRelations: (RoleMenu object) => {},
        getId: (RoleMenu object) => object.rolmenuid,
        setId: (RoleMenu object, int id) {
          object.rolmenuid = id;
        },
        objectToFB: (RoleMenu object, fb.Builder fbb) {
          final menuidOffset =
              object.menuid == null ? null : fbb.writeString(object.menuid!);
          final registradoOffset = object.registrado == null
              ? null
              : fbb.writeString(object.registrado!);
          fbb.startTable(5);
          fbb.addInt64(0, object.rolmenuid ?? 0);
          fbb.addInt64(1, object.rolid);
          fbb.addOffset(2, menuidOffset);
          fbb.addOffset(3, registradoOffset);
          fbb.finish(fbb.endTable());
          return object.rolmenuid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = RoleMenu(
              rolmenuid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              rolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              menuid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              registrado: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10));

          return object;
        }),
    Session: EntityDefinition<Session>(
        model: _entities[5],
        toOneRelations: (Session object) => [],
        toManyRelations: (Session object) => {},
        getId: (Session object) => object.id,
        setId: (Session object, int id) {
          object.id = id;
        },
        objectToFB: (Session object, fb.Builder fbb) {
          final tokenOffset =
              object.token == null ? null : fbb.writeString(object.token!);
          final deviceTokenOffset = object.deviceToken == null
              ? null
              : fbb.writeString(object.deviceToken!);
          final tokenFechaExpiracionOffset = object.tokenFechaExpiracion == null
              ? null
              : fbb.writeString(object.tokenFechaExpiracion!);
          final dbUserOffset =
              object.dbUser == null ? null : fbb.writeString(object.dbUser!);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, tokenOffset);
          fbb.addOffset(2, deviceTokenOffset);
          fbb.addInt64(3, object.tokenExpiracion);
          fbb.addOffset(4, tokenFechaExpiracionOffset);
          fbb.addOffset(5, dbUserOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Session(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              tokenExpiracion: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              token: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              tokenFechaExpiracion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              deviceToken: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8))
            ..dbUser = const fb.StringReader()
                .vTableGetNullable(buffer, rootOffset, 14);

          return object;
        }),
    User: EntityDefinition<User>(
        model: _entities[6],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {},
        getId: (User object) => object.usuarioid,
        setId: (User object, int id) {
          object.usuarioid = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final usuarioOffset =
              object.usuario == null ? null : fbb.writeString(object.usuario!);
          final descripcionOffset = object.descripcion == null
              ? null
              : fbb.writeString(object.descripcion!);
          final correoOffset =
              object.correo == null ? null : fbb.writeString(object.correo!);
          final tokenOffset =
              object.token == null ? null : fbb.writeString(object.token!);
          final telefonoOffset = object.telefono == null
              ? null
              : fbb.writeString(object.telefono!);
          final creadoOffset =
              object.creado == null ? null : fbb.writeString(object.creado!);
          final menuidFav1Offset = object.menuidFav1 == null
              ? null
              : fbb.writeString(object.menuidFav1!);
          final menuidFav2Offset = object.menuidFav2 == null
              ? null
              : fbb.writeString(object.menuidFav2!);
          final menuidFav3Offset = object.menuidFav3 == null
              ? null
              : fbb.writeString(object.menuidFav3!);
          fbb.startTable(14);
          fbb.addInt64(0, object.usuarioid);
          fbb.addOffset(1, usuarioOffset);
          fbb.addOffset(2, descripcionOffset);
          fbb.addOffset(3, correoOffset);
          fbb.addBool(4, object.activo);
          fbb.addBool(5, object.bloqueado);
          fbb.addInt64(6, object.rolid);
          fbb.addOffset(7, tokenOffset);
          fbb.addOffset(8, telefonoOffset);
          fbb.addOffset(9, creadoOffset);
          fbb.addOffset(10, menuidFav1Offset);
          fbb.addOffset(11, menuidFav2Offset);
          fbb.addOffset(12, menuidFav3Offset);
          fbb.finish(fbb.endTable());
          return object.usuarioid;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = User(
              usuarioid:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              usuario: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              descripcion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              correo: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              activo: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              bloqueado: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              rolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              token: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              telefono: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              creado: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              menuidFav1: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              menuidFav2:
                  const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              menuidFav3: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28));

          return object;
        }),
    Vendor: EntityDefinition<Vendor>(
        model: _entities[7],
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
        }),
    Zone: EntityDefinition<Zone>(
        model: _entities[8],
        toOneRelations: (Zone object) => [],
        toManyRelations: (Zone object) => {},
        getId: (Zone object) => object.id,
        setId: (Zone object, int id) {
          object.id = id;
        },
        objectToFB: (Zone object, fb.Builder fbb) {
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          final vendedoridOffset = object.vendedorid == null
              ? null
              : fbb.writeString(object.vendedorid!);
          final canalidOffset =
              object.canalid == null ? null : fbb.writeString(object.canalid!);
          final subcanalidOffset = object.subcanalid == null
              ? null
              : fbb.writeString(object.subcanalid!);
          final unidadnegocioidOffset = object.unidadnegocioid == null
              ? null
              : fbb.writeString(object.unidadnegocioid!);
          fbb.startTable(9);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, zonaidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addOffset(3, vendedoridOffset);
          fbb.addOffset(4, canalidOffset);
          fbb.addOffset(5, subcanalidOffset);
          fbb.addOffset(6, unidadnegocioidOffset);
          fbb.addBool(7, object.activo);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Zone(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              vendedorid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              canalid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              subcanalid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              unidadnegocioid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              activo: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 18));

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

/// [Menu] entity fields to define ObjectBox queries.
class Menu_ {
  /// see [Menu.id]
  static final id = QueryIntegerProperty<Menu>(_entities[1].properties[0]);

  /// see [Menu.menuid]
  static final menuid = QueryStringProperty<Menu>(_entities[1].properties[1]);

  /// see [Menu.titulo]
  static final titulo = QueryStringProperty<Menu>(_entities[1].properties[2]);

  /// see [Menu.ruta]
  static final ruta = QueryStringProperty<Menu>(_entities[1].properties[3]);

  /// see [Menu.orden]
  static final orden = QueryIntegerProperty<Menu>(_entities[1].properties[4]);

  /// see [Menu.acceso]
  static final acceso = QueryBooleanProperty<Menu>(_entities[1].properties[5]);
}

/// [MenuFav] entity fields to define ObjectBox queries.
class MenuFav_ {
  /// see [MenuFav.id]
  static final id = QueryIntegerProperty<MenuFav>(_entities[2].properties[0]);

  /// see [MenuFav.menuid]
  static final menuid =
      QueryStringProperty<MenuFav>(_entities[2].properties[1]);

  /// see [MenuFav.titulo]
  static final titulo =
      QueryStringProperty<MenuFav>(_entities[2].properties[2]);

  /// see [MenuFav.ruta]
  static final ruta = QueryStringProperty<MenuFav>(_entities[2].properties[3]);

  /// see [MenuFav.orden]
  static final orden =
      QueryIntegerProperty<MenuFav>(_entities[2].properties[4]);
}

/// [Role] entity fields to define ObjectBox queries.
class Role_ {
  /// see [Role.rolid]
  static final rolid = QueryIntegerProperty<Role>(_entities[3].properties[0]);

  /// see [Role.nombre]
  static final nombre = QueryStringProperty<Role>(_entities[3].properties[1]);

  /// see [Role.roleMenu]
  static final roleMenu =
      QueryRelationToOne<Role, RoleMenu>(_entities[3].properties[2]);
}

/// [RoleMenu] entity fields to define ObjectBox queries.
class RoleMenu_ {
  /// see [RoleMenu.rolmenuid]
  static final rolmenuid =
      QueryIntegerProperty<RoleMenu>(_entities[4].properties[0]);

  /// see [RoleMenu.rolid]
  static final rolid =
      QueryIntegerProperty<RoleMenu>(_entities[4].properties[1]);

  /// see [RoleMenu.menuid]
  static final menuid =
      QueryStringProperty<RoleMenu>(_entities[4].properties[2]);

  /// see [RoleMenu.registrado]
  static final registrado =
      QueryStringProperty<RoleMenu>(_entities[4].properties[3]);
}

/// [Session] entity fields to define ObjectBox queries.
class Session_ {
  /// see [Session.id]
  static final id = QueryIntegerProperty<Session>(_entities[5].properties[0]);

  /// see [Session.token]
  static final token = QueryStringProperty<Session>(_entities[5].properties[1]);

  /// see [Session.deviceToken]
  static final deviceToken =
      QueryStringProperty<Session>(_entities[5].properties[2]);

  /// see [Session.tokenExpiracion]
  static final tokenExpiracion =
      QueryIntegerProperty<Session>(_entities[5].properties[3]);

  /// see [Session.tokenFechaExpiracion]
  static final tokenFechaExpiracion =
      QueryStringProperty<Session>(_entities[5].properties[4]);

  /// see [Session.dbUser]
  static final dbUser =
      QueryStringProperty<Session>(_entities[5].properties[5]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<User>(_entities[6].properties[0]);

  /// see [User.usuario]
  static final usuario = QueryStringProperty<User>(_entities[6].properties[1]);

  /// see [User.descripcion]
  static final descripcion =
      QueryStringProperty<User>(_entities[6].properties[2]);

  /// see [User.correo]
  static final correo = QueryStringProperty<User>(_entities[6].properties[3]);

  /// see [User.activo]
  static final activo = QueryBooleanProperty<User>(_entities[6].properties[4]);

  /// see [User.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<User>(_entities[6].properties[5]);

  /// see [User.rolid]
  static final rolid = QueryIntegerProperty<User>(_entities[6].properties[6]);

  /// see [User.token]
  static final token = QueryStringProperty<User>(_entities[6].properties[7]);

  /// see [User.telefono]
  static final telefono = QueryStringProperty<User>(_entities[6].properties[8]);

  /// see [User.creado]
  static final creado = QueryStringProperty<User>(_entities[6].properties[9]);

  /// see [User.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<User>(_entities[6].properties[10]);

  /// see [User.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<User>(_entities[6].properties[11]);

  /// see [User.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<User>(_entities[6].properties[12]);
}

/// [Vendor] entity fields to define ObjectBox queries.
class Vendor_ {
  /// see [Vendor.id]
  static final id = QueryIntegerProperty<Vendor>(_entities[7].properties[0]);

  /// see [Vendor.username]
  static final username =
      QueryStringProperty<Vendor>(_entities[7].properties[1]);

  /// see [Vendor.password]
  static final password =
      QueryStringProperty<Vendor>(_entities[7].properties[2]);

  /// see [Vendor.name]
  static final name = QueryStringProperty<Vendor>(_entities[7].properties[3]);

  /// see [Vendor.zone]
  static final zone = QueryStringProperty<Vendor>(_entities[7].properties[4]);
}

/// [Zone] entity fields to define ObjectBox queries.
class Zone_ {
  /// see [Zone.id]
  static final id = QueryIntegerProperty<Zone>(_entities[8].properties[0]);

  /// see [Zone.zonaid]
  static final zonaid = QueryStringProperty<Zone>(_entities[8].properties[1]);

  /// see [Zone.nombre]
  static final nombre = QueryStringProperty<Zone>(_entities[8].properties[2]);

  /// see [Zone.vendedorid]
  static final vendedorid =
      QueryStringProperty<Zone>(_entities[8].properties[3]);

  /// see [Zone.canalid]
  static final canalid = QueryStringProperty<Zone>(_entities[8].properties[4]);

  /// see [Zone.subcanalid]
  static final subcanalid =
      QueryStringProperty<Zone>(_entities[8].properties[5]);

  /// see [Zone.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Zone>(_entities[8].properties[6]);

  /// see [Zone.activo]
  static final activo = QueryBooleanProperty<Zone>(_entities[8].properties[7]);
}
