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
import '../../models/sync_manager/sync_manager.dart';
import '../../models/user/user.dart';
import '../../models/vendor/vendor.dart';
import '../../models/zone/zone.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6405003038241215531),
      name: 'Client',
      lastPropertyId: const IdUid(25, 4453194021249486584),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6136122469005502449),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 6992079884463091355),
            name: 'clienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4357222339793072887),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3737541063415872727),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6920652594351311099),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 4566258360797317874),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 1855520032972420673),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6656702231265499099),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 826364370061984479),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 7148816657688739166),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 8170908848814782725),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 7388487202666073042),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 4898977957583259288),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 4742251249386832574),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 2731283850396837881),
            name: 'diavisita1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 8467219295226182094),
            name: 'diavisita2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 2977757558516257293),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 8162171888884302553),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 697725997021299737),
            name: 'aniversario',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 1824973616425588614),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 2164127948509326868),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 7042286168424276530),
            name: 'lineacredito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 6148438167475285683),
            name: 'deuda',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 2371008845991232525),
            name: 'lineadisponible',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 4453194021249486584),
            name: 'lastSync',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 6910102649050735869),
      name: 'Menu',
      lastPropertyId: const IdUid(6, 5825227592083207674),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6995139443390431375),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5323684385639437215),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3290351682168097796),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5945209519476849638),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4513045578519447188),
            name: 'orden',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5825227592083207674),
            name: 'acceso',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 3199343147393064161),
      name: 'MenuFav',
      lastPropertyId: const IdUid(5, 8099774250326108886),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2055089211816141640),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6825468287730358348),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5701453095639113580),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3017610498572493681),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8099774250326108886),
            name: 'orden',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 2303648714207805790),
      name: 'Role',
      lastPropertyId: const IdUid(3, 2117532305658146823),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1890724299710219928),
            name: 'rolid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5735389585098224855),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2117532305658146823),
            name: 'roleMenuId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 6120305970691800559),
            relationTarget: 'RoleMenu')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 3242671228350732084),
      name: 'RoleMenu',
      lastPropertyId: const IdUid(4, 7176526379307248683),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3468885142193703961),
            name: 'rolmenuid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 960665514282762676),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8132890816508660265),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7176526379307248683),
            name: 'registrado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 3399956375045772611),
      name: 'Session',
      lastPropertyId: const IdUid(20, 3694063039512997830),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5039126229803921073),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5120007304921410596),
            name: 'deviceToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6158683407074255365),
            name: 'usuarioid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 412204947459496973),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8295578751574875788),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2467485567289018597),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2189998072476785050),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3379298042967088851),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 8292734298065456747),
            name: 'motivobloqueoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 6716250682666733639),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 7569935056088213181),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 3400101321680687138),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1653613467410082790),
            name: 'creado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 2247852578571036260),
            name: 'actualizado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 3221874054463408245),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 7015291975739336874),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 1982416063131044978),
            name: 'menuidFav3',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 244365200740298265),
            name: 'motivobloqueo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 8005960980300889793),
            name: 'fechaExpiracion',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 3694063039512997830),
            name: 'tokenExpiracion',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'zones', srcEntity: 'Zone', srcField: 'session')
      ]),
  ModelEntity(
      id: const IdUid(7, 9066654320823586908),
      name: 'SyncManager',
      lastPropertyId: const IdUid(4, 5549603667614343618),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2183787241037730052),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1870062132611417478),
            name: 'syncType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5359323508085854991),
            name: 'lastSyncDownDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5549603667614343618),
            name: 'lastSyncUpDate',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 1871379704220637790),
      name: 'User',
      lastPropertyId: const IdUid(13, 5044629437909943379),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1925266461633603294),
            name: 'usuarioid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5343649916891605877),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8277910467727815459),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 105983029770248437),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 7303963623401967280),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5641300765323220290),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 9083289789067083681),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 7643852114721637638),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5522175752182620175),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2597566433538656378),
            name: 'creado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 7954048295197118160),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 857851025557293796),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 5044629437909943379),
            name: 'menuidFav3',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 7017835550395435011),
      name: 'Vendor',
      lastPropertyId: const IdUid(5, 7909784377583410562),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5766544328317486074),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2493181986416878783),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2199875099760275046),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6762629118192062723),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 7909784377583410562),
            name: 'zone',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 858104386194730590),
      name: 'Zone',
      lastPropertyId: const IdUid(9, 7992194096798181971),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6785176775442233350),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 2752354566858083198),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 390111883622515648),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2930468656720581612),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8681147052500643218),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2455891143413100961),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2755630438510831717),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3425111322850531392),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 7992194096798181971),
            name: 'sessionId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 6991858934025488596),
            relationTarget: 'Session')
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
      lastEntityId: const IdUid(10, 858104386194730590),
      lastIndexId: const IdUid(2, 6991858934025488596),
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
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final unidadnegocioidOffset = object.unidadnegocioid == null
              ? null
              : fbb.writeString(object.unidadnegocioid!);
          final rucOffset =
              object.ruc == null ? null : fbb.writeString(object.ruc!);
          final razonsocialOffset = object.razonsocial == null
              ? null
              : fbb.writeString(object.razonsocial!);
          final nombrecomercialOffset = object.nombrecomercial == null
              ? null
              : fbb.writeString(object.nombrecomercial!);
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final ubigeoidOffset = object.ubigeoid == null
              ? null
              : fbb.writeString(object.ubigeoid!);
          final direccionOffset = object.direccion == null
              ? null
              : fbb.writeString(object.direccion!);
          final estadoclienteidOffset = object.estadoclienteid == null
              ? null
              : fbb.writeString(object.estadoclienteid!);
          final estadodiremididOffset = object.estadodiremidid == null
              ? null
              : fbb.writeString(object.estadodiremidid!);
          final condicionventaidOffset = object.condicionventaid == null
              ? null
              : fbb.writeString(object.condicionventaid!);
          final tipodescuentoidOffset = object.tipodescuentoid == null
              ? null
              : fbb.writeString(object.tipodescuentoid!);
          final subcanalidOffset = object.subcanalid == null
              ? null
              : fbb.writeString(object.subcanalid!);
          final diavisita1Offset = object.diavisita1 == null
              ? null
              : fbb.writeString(object.diavisita1!);
          final diavisita2Offset = object.diavisita2 == null
              ? null
              : fbb.writeString(object.diavisita2!);
          final representantelegalOffset = object.representantelegal == null
              ? null
              : fbb.writeString(object.representantelegal!);
          final dniOffset =
              object.dni == null ? null : fbb.writeString(object.dni!);
          final telefonoOffset = object.telefono == null
              ? null
              : fbb.writeString(object.telefono!);
          final movilOffset =
              object.movil == null ? null : fbb.writeString(object.movil!);
          final lineacreditoOffset = object.lineacredito == null
              ? null
              : fbb.writeString(object.lineacredito!);
          final deudaOffset =
              object.deuda == null ? null : fbb.writeString(object.deuda!);
          final lineadisponibleOffset = object.lineadisponible == null
              ? null
              : fbb.writeString(object.lineadisponible!);
          fbb.startTable(26);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, unidadnegocioidOffset);
          fbb.addOffset(3, rucOffset);
          fbb.addOffset(4, razonsocialOffset);
          fbb.addOffset(5, nombrecomercialOffset);
          fbb.addOffset(6, zonaidOffset);
          fbb.addOffset(7, ubigeoidOffset);
          fbb.addOffset(8, direccionOffset);
          fbb.addOffset(9, estadoclienteidOffset);
          fbb.addOffset(10, estadodiremididOffset);
          fbb.addOffset(11, condicionventaidOffset);
          fbb.addOffset(12, tipodescuentoidOffset);
          fbb.addOffset(13, subcanalidOffset);
          fbb.addOffset(14, diavisita1Offset);
          fbb.addOffset(15, diavisita2Offset);
          fbb.addOffset(16, representantelegalOffset);
          fbb.addOffset(17, dniOffset);
          fbb.addInt64(18, object.aniversario?.millisecondsSinceEpoch);
          fbb.addOffset(19, telefonoOffset);
          fbb.addOffset(20, movilOffset);
          fbb.addOffset(21, lineacreditoOffset);
          fbb.addOffset(22, deudaOffset);
          fbb.addOffset(23, lineadisponibleOffset);
          fbb.addInt64(24, object.lastSync?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final aniversarioValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 40);
          final lastSyncValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 52);
          final object = Client(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              unidadnegocioid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              ruc: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              razonsocial: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              nombrecomercial: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              ubigeoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              direccion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              estadoclienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              estadodiremidid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              condicionventaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 26),
              tipodescuentoid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              subcanalid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              diavisita1: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              diavisita2: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34),
              representantelegal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              dni: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 38),
              aniversario: aniversarioValue == null ? null : DateTime.fromMillisecondsSinceEpoch(aniversarioValue),
              telefono: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 42),
              movil: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 44),
              lineacredito: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 46),
              deuda: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 48),
              lineadisponible: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 50),
              lastSync: lastSyncValue == null ? null : DateTime.fromMillisecondsSinceEpoch(lastSyncValue));

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
        toManyRelations: (Session object) => {
              RelInfo<Zone>.toOneBacklink(
                      9, object.id, (Zone srcObject) => srcObject.session):
                  object.zones
            },
        getId: (Session object) => object.id,
        setId: (Session object, int id) {
          object.id = id;
        },
        objectToFB: (Session object, fb.Builder fbb) {
          final deviceTokenOffset = object.deviceToken == null
              ? null
              : fbb.writeString(object.deviceToken!);
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
          final menuidFav1Offset = object.menuidFav1 == null
              ? null
              : fbb.writeString(object.menuidFav1!);
          final menuidFav2Offset = object.menuidFav2 == null
              ? null
              : fbb.writeString(object.menuidFav2!);
          final menuidFav3Offset = object.menuidFav3 == null
              ? null
              : fbb.writeString(object.menuidFav3!);
          final motivobloqueoOffset = object.motivobloqueo == null
              ? null
              : fbb.writeString(object.motivobloqueo!);
          fbb.startTable(21);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, deviceTokenOffset);
          fbb.addInt64(2, object.usuarioid);
          fbb.addOffset(3, usuarioOffset);
          fbb.addOffset(4, descripcionOffset);
          fbb.addOffset(5, correoOffset);
          fbb.addBool(6, object.activo);
          fbb.addBool(7, object.bloqueado);
          fbb.addInt64(8, object.motivobloqueoid);
          fbb.addInt64(9, object.rolid);
          fbb.addOffset(10, tokenOffset);
          fbb.addOffset(11, telefonoOffset);
          fbb.addInt64(12, object.creado?.millisecondsSinceEpoch);
          fbb.addInt64(13, object.actualizado?.millisecondsSinceEpoch);
          fbb.addOffset(14, menuidFav1Offset);
          fbb.addOffset(15, menuidFav2Offset);
          fbb.addOffset(16, menuidFav3Offset);
          fbb.addOffset(17, motivobloqueoOffset);
          fbb.addInt64(18, object.fechaExpiracion?.millisecondsSinceEpoch);
          fbb.addInt64(19, object.tokenExpiracion);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final creadoValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 28);
          final actualizadoValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 30);
          final fechaExpiracionValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 40);
          final object = Session(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              deviceToken: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              usuarioid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              usuario: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              descripcion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              correo: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              activo: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              bloqueado: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              motivobloqueoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              rolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              token: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              telefono: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 26),
              creado: creadoValue == null ? null : DateTime.fromMillisecondsSinceEpoch(creadoValue),
              actualizado: actualizadoValue == null ? null : DateTime.fromMillisecondsSinceEpoch(actualizadoValue),
              menuidFav1: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              menuidFav2: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34),
              menuidFav3: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              motivobloqueo: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 38),
              fechaExpiracion: fechaExpiracionValue == null ? null : DateTime.fromMillisecondsSinceEpoch(fechaExpiracionValue),
              tokenExpiracion: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 42));
          InternalToManyAccess.setRelInfo(
              object.zones,
              store,
              RelInfo<Zone>.toOneBacklink(
                  9, object.id, (Zone srcObject) => srcObject.session),
              store.box<Session>());
          return object;
        }),
    SyncManager: EntityDefinition<SyncManager>(
        model: _entities[6],
        toOneRelations: (SyncManager object) => [],
        toManyRelations: (SyncManager object) => {},
        getId: (SyncManager object) => object.id,
        setId: (SyncManager object, int id) {
          object.id = id;
        },
        objectToFB: (SyncManager object, fb.Builder fbb) {
          final syncTypeOffset = object.syncType == null
              ? null
              : fbb.writeString(object.syncType!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, syncTypeOffset);
          fbb.addInt64(2, object.lastSyncDownDate?.millisecondsSinceEpoch);
          fbb.addInt64(3, object.lastSyncUpDate?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final lastSyncDownDateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final lastSyncUpDateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final object = SyncManager(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              syncType: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              lastSyncDownDate: lastSyncDownDateValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(lastSyncDownDateValue),
              lastSyncUpDate: lastSyncUpDateValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(lastSyncUpDateValue));

          return object;
        }),
    User: EntityDefinition<User>(
        model: _entities[7],
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
        model: _entities[8],
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
        model: _entities[9],
        toOneRelations: (Zone object) => [object.session],
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
          fbb.startTable(10);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, zonaidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addOffset(3, vendedoridOffset);
          fbb.addOffset(4, canalidOffset);
          fbb.addOffset(5, subcanalidOffset);
          fbb.addOffset(6, unidadnegocioidOffset);
          fbb.addBool(7, object.activo);
          fbb.addInt64(8, object.session.targetId);
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
          object.session.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0);
          object.session.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Client] entity fields to define ObjectBox queries.
class Client_ {
  /// see [Client.id]
  static final id = QueryIntegerProperty<Client>(_entities[0].properties[0]);

  /// see [Client.clienteid]
  static final clienteid =
      QueryStringProperty<Client>(_entities[0].properties[1]);

  /// see [Client.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Client>(_entities[0].properties[2]);

  /// see [Client.ruc]
  static final ruc = QueryStringProperty<Client>(_entities[0].properties[3]);

  /// see [Client.razonsocial]
  static final razonsocial =
      QueryStringProperty<Client>(_entities[0].properties[4]);

  /// see [Client.nombrecomercial]
  static final nombrecomercial =
      QueryStringProperty<Client>(_entities[0].properties[5]);

  /// see [Client.zonaid]
  static final zonaid = QueryStringProperty<Client>(_entities[0].properties[6]);

  /// see [Client.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Client>(_entities[0].properties[7]);

  /// see [Client.direccion]
  static final direccion =
      QueryStringProperty<Client>(_entities[0].properties[8]);

  /// see [Client.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<Client>(_entities[0].properties[9]);

  /// see [Client.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<Client>(_entities[0].properties[10]);

  /// see [Client.condicionventaid]
  static final condicionventaid =
      QueryStringProperty<Client>(_entities[0].properties[11]);

  /// see [Client.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<Client>(_entities[0].properties[12]);

  /// see [Client.subcanalid]
  static final subcanalid =
      QueryStringProperty<Client>(_entities[0].properties[13]);

  /// see [Client.diavisita1]
  static final diavisita1 =
      QueryStringProperty<Client>(_entities[0].properties[14]);

  /// see [Client.diavisita2]
  static final diavisita2 =
      QueryStringProperty<Client>(_entities[0].properties[15]);

  /// see [Client.representantelegal]
  static final representantelegal =
      QueryStringProperty<Client>(_entities[0].properties[16]);

  /// see [Client.dni]
  static final dni = QueryStringProperty<Client>(_entities[0].properties[17]);

  /// see [Client.aniversario]
  static final aniversario =
      QueryIntegerProperty<Client>(_entities[0].properties[18]);

  /// see [Client.telefono]
  static final telefono =
      QueryStringProperty<Client>(_entities[0].properties[19]);

  /// see [Client.movil]
  static final movil = QueryStringProperty<Client>(_entities[0].properties[20]);

  /// see [Client.lineacredito]
  static final lineacredito =
      QueryStringProperty<Client>(_entities[0].properties[21]);

  /// see [Client.deuda]
  static final deuda = QueryStringProperty<Client>(_entities[0].properties[22]);

  /// see [Client.lineadisponible]
  static final lineadisponible =
      QueryStringProperty<Client>(_entities[0].properties[23]);

  /// see [Client.lastSync]
  static final lastSync =
      QueryIntegerProperty<Client>(_entities[0].properties[24]);
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

  /// see [Session.deviceToken]
  static final deviceToken =
      QueryStringProperty<Session>(_entities[5].properties[1]);

  /// see [Session.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<Session>(_entities[5].properties[2]);

  /// see [Session.usuario]
  static final usuario =
      QueryStringProperty<Session>(_entities[5].properties[3]);

  /// see [Session.descripcion]
  static final descripcion =
      QueryStringProperty<Session>(_entities[5].properties[4]);

  /// see [Session.correo]
  static final correo =
      QueryStringProperty<Session>(_entities[5].properties[5]);

  /// see [Session.activo]
  static final activo =
      QueryBooleanProperty<Session>(_entities[5].properties[6]);

  /// see [Session.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<Session>(_entities[5].properties[7]);

  /// see [Session.motivobloqueoid]
  static final motivobloqueoid =
      QueryIntegerProperty<Session>(_entities[5].properties[8]);

  /// see [Session.rolid]
  static final rolid =
      QueryIntegerProperty<Session>(_entities[5].properties[9]);

  /// see [Session.token]
  static final token =
      QueryStringProperty<Session>(_entities[5].properties[10]);

  /// see [Session.telefono]
  static final telefono =
      QueryStringProperty<Session>(_entities[5].properties[11]);

  /// see [Session.creado]
  static final creado =
      QueryIntegerProperty<Session>(_entities[5].properties[12]);

  /// see [Session.actualizado]
  static final actualizado =
      QueryIntegerProperty<Session>(_entities[5].properties[13]);

  /// see [Session.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<Session>(_entities[5].properties[14]);

  /// see [Session.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<Session>(_entities[5].properties[15]);

  /// see [Session.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<Session>(_entities[5].properties[16]);

  /// see [Session.motivobloqueo]
  static final motivobloqueo =
      QueryStringProperty<Session>(_entities[5].properties[17]);

  /// see [Session.fechaExpiracion]
  static final fechaExpiracion =
      QueryIntegerProperty<Session>(_entities[5].properties[18]);

  /// see [Session.tokenExpiracion]
  static final tokenExpiracion =
      QueryIntegerProperty<Session>(_entities[5].properties[19]);
}

/// [SyncManager] entity fields to define ObjectBox queries.
class SyncManager_ {
  /// see [SyncManager.id]
  static final id =
      QueryIntegerProperty<SyncManager>(_entities[6].properties[0]);

  /// see [SyncManager.syncType]
  static final syncType =
      QueryStringProperty<SyncManager>(_entities[6].properties[1]);

  /// see [SyncManager.lastSyncDownDate]
  static final lastSyncDownDate =
      QueryIntegerProperty<SyncManager>(_entities[6].properties[2]);

  /// see [SyncManager.lastSyncUpDate]
  static final lastSyncUpDate =
      QueryIntegerProperty<SyncManager>(_entities[6].properties[3]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<User>(_entities[7].properties[0]);

  /// see [User.usuario]
  static final usuario = QueryStringProperty<User>(_entities[7].properties[1]);

  /// see [User.descripcion]
  static final descripcion =
      QueryStringProperty<User>(_entities[7].properties[2]);

  /// see [User.correo]
  static final correo = QueryStringProperty<User>(_entities[7].properties[3]);

  /// see [User.activo]
  static final activo = QueryBooleanProperty<User>(_entities[7].properties[4]);

  /// see [User.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<User>(_entities[7].properties[5]);

  /// see [User.rolid]
  static final rolid = QueryIntegerProperty<User>(_entities[7].properties[6]);

  /// see [User.token]
  static final token = QueryStringProperty<User>(_entities[7].properties[7]);

  /// see [User.telefono]
  static final telefono = QueryStringProperty<User>(_entities[7].properties[8]);

  /// see [User.creado]
  static final creado = QueryStringProperty<User>(_entities[7].properties[9]);

  /// see [User.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<User>(_entities[7].properties[10]);

  /// see [User.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<User>(_entities[7].properties[11]);

  /// see [User.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<User>(_entities[7].properties[12]);
}

/// [Vendor] entity fields to define ObjectBox queries.
class Vendor_ {
  /// see [Vendor.id]
  static final id = QueryIntegerProperty<Vendor>(_entities[8].properties[0]);

  /// see [Vendor.username]
  static final username =
      QueryStringProperty<Vendor>(_entities[8].properties[1]);

  /// see [Vendor.password]
  static final password =
      QueryStringProperty<Vendor>(_entities[8].properties[2]);

  /// see [Vendor.name]
  static final name = QueryStringProperty<Vendor>(_entities[8].properties[3]);

  /// see [Vendor.zone]
  static final zone = QueryStringProperty<Vendor>(_entities[8].properties[4]);
}

/// [Zone] entity fields to define ObjectBox queries.
class Zone_ {
  /// see [Zone.id]
  static final id = QueryIntegerProperty<Zone>(_entities[9].properties[0]);

  /// see [Zone.zonaid]
  static final zonaid = QueryStringProperty<Zone>(_entities[9].properties[1]);

  /// see [Zone.nombre]
  static final nombre = QueryStringProperty<Zone>(_entities[9].properties[2]);

  /// see [Zone.vendedorid]
  static final vendedorid =
      QueryStringProperty<Zone>(_entities[9].properties[3]);

  /// see [Zone.canalid]
  static final canalid = QueryStringProperty<Zone>(_entities[9].properties[4]);

  /// see [Zone.subcanalid]
  static final subcanalid =
      QueryStringProperty<Zone>(_entities[9].properties[5]);

  /// see [Zone.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Zone>(_entities[9].properties[6]);

  /// see [Zone.activo]
  static final activo = QueryBooleanProperty<Zone>(_entities[9].properties[7]);

  /// see [Zone.session]
  static final session =
      QueryRelationToOne<Zone, Session>(_entities[9].properties[8]);
}
