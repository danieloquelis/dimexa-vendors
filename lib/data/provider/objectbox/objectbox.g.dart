// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../models/client/client.dart';
import '../../models/client_status/client_status.dart';
import '../../models/diremid_status/diremid_status.dart';
import '../../models/discount_type/discount_type.dart';
import '../../models/menu/menu.dart';
import '../../models/menu_fav/menu_fav.dart';
import '../../models/role/role.dart';
import '../../models/role_menu/role_menu.dart';
import '../../models/session/session.dart';
import '../../models/sub_channel/sub_channel.dart';
import '../../models/sync_manager/sync_manager.dart';
import '../../models/ubigeo/ubigeo.dart';
import '../../models/user/user.dart';
import '../../models/vendor/vendor.dart';
import '../../models/zone/zone.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8349394920476561184),
      name: 'Client',
      lastPropertyId: const IdUid(25, 4255338752842179106),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7282793414619174128),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 8552624331511982159),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(1, 175107266328771733)),
        ModelProperty(
            id: const IdUid(3, 2904832437545013556),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5419960126395396584),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 375503136900700868),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 1333599756556370106),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2463060789658667296),
            name: 'zonaid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(2, 462479870951058550)),
        ModelProperty(
            id: const IdUid(8, 7621929787752285010),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5589367474611542257),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 3919441809410460436),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 2888027664648771120),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 4537203302573928061),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 5990575552315426467),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 715658675792670610),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 316109225921134229),
            name: 'diavisita1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 2599155723177540680),
            name: 'diavisita2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 779806480579322819),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 8259060521622919087),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 2089201516188919083),
            name: 'aniversario',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 6749597781563352715),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 7438464583268814413),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 2983303935393024236),
            name: 'lineacredito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 7179186324762054),
            name: 'deuda',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 8961769762402305330),
            name: 'lineadisponible',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 4255338752842179106),
            name: 'lastSync',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(1, 4006900782610999559),
            name: 'ubigee',
            targetId: const IdUid(12, 938348534075148338))
      ],
      backlinks: <ModelBacklink>[
        ModelBacklink(
            name: 'clientStatus',
            srcEntity: 'ClientStatus',
            srcField: 'client'),
        ModelBacklink(
            name: 'diremidStatus',
            srcEntity: 'DiremidStatus',
            srcField: 'client'),
        ModelBacklink(
            name: 'discountType',
            srcEntity: 'DiscountType',
            srcField: 'client'),
        ModelBacklink(
            name: 'subChannel', srcEntity: 'SubChannel', srcField: 'client')
      ]),
  ModelEntity(
      id: const IdUid(2, 6926644628290695969),
      name: 'ClientStatus',
      lastPropertyId: const IdUid(4, 6007852656575729828),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2378732667953053334),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4668234266544493588),
            name: 'estadoclienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(3, 419571393471854884)),
        ModelProperty(
            id: const IdUid(3, 8651682195744712820),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6007852656575729828),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(4, 3413799566883164511),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 5795270096438674767),
      name: 'DiremidStatus',
      lastPropertyId: const IdUid(4, 5678319610938397712),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2081835591624824098),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6649377993477699864),
            name: 'estadodiremidid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(5, 8987888861316937276)),
        ModelProperty(
            id: const IdUid(3, 1670034280512988188),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5678319610938397712),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(6, 3573919421713680407),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 5071457263933779099),
      name: 'DiscountType',
      lastPropertyId: const IdUid(4, 7644953297648465713),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5561983446488606413),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 347040401396093378),
            name: 'tipodescuentoid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(7, 9125552918778240590)),
        ModelProperty(
            id: const IdUid(3, 5497590351929849878),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7644953297648465713),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(8, 220651842151372698),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 7079933155203997927),
      name: 'Menu',
      lastPropertyId: const IdUid(6, 2294637730715121970),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5565230315954885230),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1381904658404045502),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5282280223471266329),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8589133928297686482),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1011618083347955267),
            name: 'orden',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2294637730715121970),
            name: 'acceso',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 1864744129970585283),
      name: 'MenuFav',
      lastPropertyId: const IdUid(5, 3455404707002551135),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6781449938316917735),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6310410422752373815),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7650322908976813897),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3202587094516415993),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3455404707002551135),
            name: 'orden',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 2952776552768229586),
      name: 'Role',
      lastPropertyId: const IdUid(3, 2581536561199004696),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7976128576096247721),
            name: 'rolid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 40770849521540365),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2581536561199004696),
            name: 'roleMenuId',
            type: 11,
            flags: 520,
            indexId: const IdUid(9, 4507289523734089005),
            relationTarget: 'RoleMenu')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 910093411148893077),
      name: 'RoleMenu',
      lastPropertyId: const IdUid(4, 1893707966995126102),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6455295952298591812),
            name: 'rolmenuid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3887247312534801908),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6222044382709647747),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1893707966995126102),
            name: 'registrado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 5973651672997608098),
      name: 'Session',
      lastPropertyId: const IdUid(20, 3083825453608143937),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7573241261190041008),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2178124113433019434),
            name: 'deviceToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5609892284651605965),
            name: 'usuarioid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3748960929509450036),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4764415282563492261),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2349199405378169112),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 1085106228752101546),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 4968856408711453709),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 946551564295280149),
            name: 'motivobloqueoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 9131657034952462688),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 524255893976901513),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 6463114498650960471),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 7073124539473727593),
            name: 'creado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 6263518512123030858),
            name: 'actualizado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 2413637143209395811),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5280667093979767257),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 6909421311917663984),
            name: 'menuidFav3',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 7039656489576023354),
            name: 'motivobloqueo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 2493859058296701268),
            name: 'fechaExpiracion',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 3083825453608143937),
            name: 'tokenExpiracion',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'zones', srcEntity: 'Zone', srcField: 'session')
      ]),
  ModelEntity(
      id: const IdUid(10, 6122599085261449907),
      name: 'SubChannel',
      lastPropertyId: const IdUid(4, 1412674568589178400),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4375393597861627476),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6192189686579443166),
            name: 'subcanalid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(10, 1819072556307829328)),
        ModelProperty(
            id: const IdUid(3, 3778790976118896995),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1412674568589178400),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(11, 8041634256396516008),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(11, 2360975559591949240),
      name: 'SyncManager',
      lastPropertyId: const IdUid(5, 4500205345141526680),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2229756113147992929),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6730420037676249223),
            name: 'zoneId',
            type: 9,
            flags: 2048,
            indexId: const IdUid(12, 8268799265784169701)),
        ModelProperty(
            id: const IdUid(3, 5448389696012076129),
            name: 'syncType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 7324479021395933943),
            name: 'lastSyncDownDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4500205345141526680),
            name: 'lastSyncUpDate',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(12, 938348534075148338),
      name: 'Ubigeo',
      lastPropertyId: const IdUid(4, 6216827338401023525),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5689136418399556990),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3047597260741415172),
            name: 'ubigeoid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(13, 8516050573300847682)),
        ModelProperty(
            id: const IdUid(3, 3737654058133339295),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6216827338401023525),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(14, 3558959623738751717),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(13, 5480467339342880569),
      name: 'User',
      lastPropertyId: const IdUid(13, 3186308517812136443),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6684413725060401583),
            name: 'usuarioid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6223770375871247000),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8402625622624800262),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1098123255544243960),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5109788961753602528),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2787954920504340615),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3163575820263645660),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6333652786491336948),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 8755272223597664185),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 5562378371601265569),
            name: 'creado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 3173834683488255476),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 4949162849451185489),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 3186308517812136443),
            name: 'menuidFav3',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(14, 6211050864577172975),
      name: 'Vendor',
      lastPropertyId: const IdUid(5, 5096006569920981431),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3044928206912999855),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 246501137813848990),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4733544490306448937),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 936955042637226380),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5096006569920981431),
            name: 'zone',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(15, 3675242266151890721),
      name: 'Zone',
      lastPropertyId: const IdUid(9, 681034144575952146),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6622617375365630484),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 9136891826720557244),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3046744994255331781),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4437115041229764465),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6305498861586077657),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 864285292855264490),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3008579174236717928),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 4802712385491256775),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 681034144575952146),
            name: 'sessionId',
            type: 11,
            flags: 520,
            indexId: const IdUid(15, 5655807599451241886),
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
      lastEntityId: const IdUid(15, 3675242266151890721),
      lastIndexId: const IdUid(15, 5655807599451241886),
      lastRelationId: const IdUid(1, 4006900782610999559),
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
        toManyRelations: (Client object) => {
              RelInfo<Client>.toMany(1, object.id): object.ubigee,
              RelInfo<ClientStatus>.toOneBacklink(4, object.id,
                      (ClientStatus srcObject) => srcObject.client):
                  object.clientStatus,
              RelInfo<DiremidStatus>.toOneBacklink(4, object.id,
                      (DiremidStatus srcObject) => srcObject.client):
                  object.diremidStatus,
              RelInfo<DiscountType>.toOneBacklink(4, object.id,
                      (DiscountType srcObject) => srcObject.client):
                  object.discountType,
              RelInfo<SubChannel>.toOneBacklink(
                      4, object.id, (SubChannel srcObject) => srcObject.client):
                  object.subChannel
            },
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
          InternalToManyAccess.setRelInfo(object.ubigee, store,
              RelInfo<Client>.toMany(1, object.id), store.box<Client>());
          InternalToManyAccess.setRelInfo(
              object.clientStatus,
              store,
              RelInfo<ClientStatus>.toOneBacklink(
                  4, object.id, (ClientStatus srcObject) => srcObject.client),
              store.box<Client>());
          InternalToManyAccess.setRelInfo(
              object.diremidStatus,
              store,
              RelInfo<DiremidStatus>.toOneBacklink(
                  4, object.id, (DiremidStatus srcObject) => srcObject.client),
              store.box<Client>());
          InternalToManyAccess.setRelInfo(
              object.discountType,
              store,
              RelInfo<DiscountType>.toOneBacklink(
                  4, object.id, (DiscountType srcObject) => srcObject.client),
              store.box<Client>());
          InternalToManyAccess.setRelInfo(
              object.subChannel,
              store,
              RelInfo<SubChannel>.toOneBacklink(
                  4, object.id, (SubChannel srcObject) => srcObject.client),
              store.box<Client>());
          return object;
        }),
    ClientStatus: EntityDefinition<ClientStatus>(
        model: _entities[1],
        toOneRelations: (ClientStatus object) => [object.client],
        toManyRelations: (ClientStatus object) => {},
        getId: (ClientStatus object) => object.id,
        setId: (ClientStatus object, int id) {
          object.id = id;
        },
        objectToFB: (ClientStatus object, fb.Builder fbb) {
          final estadoclienteidOffset = object.estadoclienteid == null
              ? null
              : fbb.writeString(object.estadoclienteid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, estadoclienteidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addInt64(3, object.client.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ClientStatus(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              estadoclienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.client.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.client.attach(store);
          return object;
        }),
    DiremidStatus: EntityDefinition<DiremidStatus>(
        model: _entities[2],
        toOneRelations: (DiremidStatus object) => [object.client],
        toManyRelations: (DiremidStatus object) => {},
        getId: (DiremidStatus object) => object.id,
        setId: (DiremidStatus object, int id) {
          object.id = id;
        },
        objectToFB: (DiremidStatus object, fb.Builder fbb) {
          final estadodiremididOffset = object.estadodiremidid == null
              ? null
              : fbb.writeString(object.estadodiremidid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, estadodiremididOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addInt64(3, object.client.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DiremidStatus(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              estadodiremidid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.client.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.client.attach(store);
          return object;
        }),
    DiscountType: EntityDefinition<DiscountType>(
        model: _entities[3],
        toOneRelations: (DiscountType object) => [object.client],
        toManyRelations: (DiscountType object) => {},
        getId: (DiscountType object) => object.id,
        setId: (DiscountType object, int id) {
          object.id = id;
        },
        objectToFB: (DiscountType object, fb.Builder fbb) {
          final tipodescuentoidOffset = object.tipodescuentoid == null
              ? null
              : fbb.writeString(object.tipodescuentoid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, tipodescuentoidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addInt64(3, object.client.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DiscountType(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              tipodescuentoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.client.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.client.attach(store);
          return object;
        }),
    Menu: EntityDefinition<Menu>(
        model: _entities[4],
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
        model: _entities[5],
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
        model: _entities[6],
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
        model: _entities[7],
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
        model: _entities[8],
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
    SubChannel: EntityDefinition<SubChannel>(
        model: _entities[9],
        toOneRelations: (SubChannel object) => [object.client],
        toManyRelations: (SubChannel object) => {},
        getId: (SubChannel object) => object.id,
        setId: (SubChannel object, int id) {
          object.id = id;
        },
        objectToFB: (SubChannel object, fb.Builder fbb) {
          final subcanalidOffset = object.subcanalid == null
              ? null
              : fbb.writeString(object.subcanalid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, subcanalidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addInt64(3, object.client.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SubChannel(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              subcanalid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.client.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.client.attach(store);
          return object;
        }),
    SyncManager: EntityDefinition<SyncManager>(
        model: _entities[10],
        toOneRelations: (SyncManager object) => [],
        toManyRelations: (SyncManager object) => {},
        getId: (SyncManager object) => object.id,
        setId: (SyncManager object, int id) {
          object.id = id;
        },
        objectToFB: (SyncManager object, fb.Builder fbb) {
          final zoneIdOffset =
              object.zoneId == null ? null : fbb.writeString(object.zoneId!);
          final syncTypeOffset = object.syncType == null
              ? null
              : fbb.writeString(object.syncType!);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, zoneIdOffset);
          fbb.addOffset(2, syncTypeOffset);
          fbb.addInt64(3, object.lastSyncDownDate?.millisecondsSinceEpoch);
          fbb.addInt64(4, object.lastSyncUpDate?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final lastSyncDownDateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final lastSyncUpDateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 12);
          final object = SyncManager(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              zoneId: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              syncType: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              lastSyncDownDate: lastSyncDownDateValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(lastSyncDownDateValue),
              lastSyncUpDate: lastSyncUpDateValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(lastSyncUpDateValue));

          return object;
        }),
    Ubigeo: EntityDefinition<Ubigeo>(
        model: _entities[11],
        toOneRelations: (Ubigeo object) => [object.client],
        toManyRelations: (Ubigeo object) => {},
        getId: (Ubigeo object) => object.id,
        setId: (Ubigeo object, int id) {
          object.id = id;
        },
        objectToFB: (Ubigeo object, fb.Builder fbb) {
          final ubigeoidOffset = object.ubigeoid == null
              ? null
              : fbb.writeString(object.ubigeoid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, ubigeoidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addInt64(3, object.client.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Ubigeo(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              ubigeoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.client.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.client.attach(store);
          return object;
        }),
    User: EntityDefinition<User>(
        model: _entities[12],
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
        model: _entities[13],
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
        model: _entities[14],
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

  /// see [Client.ubigee]
  static final ubigee =
      QueryRelationToMany<Client, Ubigeo>(_entities[0].relations[0]);
}

/// [ClientStatus] entity fields to define ObjectBox queries.
class ClientStatus_ {
  /// see [ClientStatus.id]
  static final id =
      QueryIntegerProperty<ClientStatus>(_entities[1].properties[0]);

  /// see [ClientStatus.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<ClientStatus>(_entities[1].properties[1]);

  /// see [ClientStatus.nombre]
  static final nombre =
      QueryStringProperty<ClientStatus>(_entities[1].properties[2]);

  /// see [ClientStatus.client]
  static final client =
      QueryRelationToOne<ClientStatus, Client>(_entities[1].properties[3]);
}

/// [DiremidStatus] entity fields to define ObjectBox queries.
class DiremidStatus_ {
  /// see [DiremidStatus.id]
  static final id =
      QueryIntegerProperty<DiremidStatus>(_entities[2].properties[0]);

  /// see [DiremidStatus.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<DiremidStatus>(_entities[2].properties[1]);

  /// see [DiremidStatus.nombre]
  static final nombre =
      QueryStringProperty<DiremidStatus>(_entities[2].properties[2]);

  /// see [DiremidStatus.client]
  static final client =
      QueryRelationToOne<DiremidStatus, Client>(_entities[2].properties[3]);
}

/// [DiscountType] entity fields to define ObjectBox queries.
class DiscountType_ {
  /// see [DiscountType.id]
  static final id =
      QueryIntegerProperty<DiscountType>(_entities[3].properties[0]);

  /// see [DiscountType.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<DiscountType>(_entities[3].properties[1]);

  /// see [DiscountType.nombre]
  static final nombre =
      QueryStringProperty<DiscountType>(_entities[3].properties[2]);

  /// see [DiscountType.client]
  static final client =
      QueryRelationToOne<DiscountType, Client>(_entities[3].properties[3]);
}

/// [Menu] entity fields to define ObjectBox queries.
class Menu_ {
  /// see [Menu.id]
  static final id = QueryIntegerProperty<Menu>(_entities[4].properties[0]);

  /// see [Menu.menuid]
  static final menuid = QueryStringProperty<Menu>(_entities[4].properties[1]);

  /// see [Menu.titulo]
  static final titulo = QueryStringProperty<Menu>(_entities[4].properties[2]);

  /// see [Menu.ruta]
  static final ruta = QueryStringProperty<Menu>(_entities[4].properties[3]);

  /// see [Menu.orden]
  static final orden = QueryIntegerProperty<Menu>(_entities[4].properties[4]);

  /// see [Menu.acceso]
  static final acceso = QueryBooleanProperty<Menu>(_entities[4].properties[5]);
}

/// [MenuFav] entity fields to define ObjectBox queries.
class MenuFav_ {
  /// see [MenuFav.id]
  static final id = QueryIntegerProperty<MenuFav>(_entities[5].properties[0]);

  /// see [MenuFav.menuid]
  static final menuid =
      QueryStringProperty<MenuFav>(_entities[5].properties[1]);

  /// see [MenuFav.titulo]
  static final titulo =
      QueryStringProperty<MenuFav>(_entities[5].properties[2]);

  /// see [MenuFav.ruta]
  static final ruta = QueryStringProperty<MenuFav>(_entities[5].properties[3]);

  /// see [MenuFav.orden]
  static final orden =
      QueryIntegerProperty<MenuFav>(_entities[5].properties[4]);
}

/// [Role] entity fields to define ObjectBox queries.
class Role_ {
  /// see [Role.rolid]
  static final rolid = QueryIntegerProperty<Role>(_entities[6].properties[0]);

  /// see [Role.nombre]
  static final nombre = QueryStringProperty<Role>(_entities[6].properties[1]);

  /// see [Role.roleMenu]
  static final roleMenu =
      QueryRelationToOne<Role, RoleMenu>(_entities[6].properties[2]);
}

/// [RoleMenu] entity fields to define ObjectBox queries.
class RoleMenu_ {
  /// see [RoleMenu.rolmenuid]
  static final rolmenuid =
      QueryIntegerProperty<RoleMenu>(_entities[7].properties[0]);

  /// see [RoleMenu.rolid]
  static final rolid =
      QueryIntegerProperty<RoleMenu>(_entities[7].properties[1]);

  /// see [RoleMenu.menuid]
  static final menuid =
      QueryStringProperty<RoleMenu>(_entities[7].properties[2]);

  /// see [RoleMenu.registrado]
  static final registrado =
      QueryStringProperty<RoleMenu>(_entities[7].properties[3]);
}

/// [Session] entity fields to define ObjectBox queries.
class Session_ {
  /// see [Session.id]
  static final id = QueryIntegerProperty<Session>(_entities[8].properties[0]);

  /// see [Session.deviceToken]
  static final deviceToken =
      QueryStringProperty<Session>(_entities[8].properties[1]);

  /// see [Session.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<Session>(_entities[8].properties[2]);

  /// see [Session.usuario]
  static final usuario =
      QueryStringProperty<Session>(_entities[8].properties[3]);

  /// see [Session.descripcion]
  static final descripcion =
      QueryStringProperty<Session>(_entities[8].properties[4]);

  /// see [Session.correo]
  static final correo =
      QueryStringProperty<Session>(_entities[8].properties[5]);

  /// see [Session.activo]
  static final activo =
      QueryBooleanProperty<Session>(_entities[8].properties[6]);

  /// see [Session.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<Session>(_entities[8].properties[7]);

  /// see [Session.motivobloqueoid]
  static final motivobloqueoid =
      QueryIntegerProperty<Session>(_entities[8].properties[8]);

  /// see [Session.rolid]
  static final rolid =
      QueryIntegerProperty<Session>(_entities[8].properties[9]);

  /// see [Session.token]
  static final token =
      QueryStringProperty<Session>(_entities[8].properties[10]);

  /// see [Session.telefono]
  static final telefono =
      QueryStringProperty<Session>(_entities[8].properties[11]);

  /// see [Session.creado]
  static final creado =
      QueryIntegerProperty<Session>(_entities[8].properties[12]);

  /// see [Session.actualizado]
  static final actualizado =
      QueryIntegerProperty<Session>(_entities[8].properties[13]);

  /// see [Session.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<Session>(_entities[8].properties[14]);

  /// see [Session.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<Session>(_entities[8].properties[15]);

  /// see [Session.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<Session>(_entities[8].properties[16]);

  /// see [Session.motivobloqueo]
  static final motivobloqueo =
      QueryStringProperty<Session>(_entities[8].properties[17]);

  /// see [Session.fechaExpiracion]
  static final fechaExpiracion =
      QueryIntegerProperty<Session>(_entities[8].properties[18]);

  /// see [Session.tokenExpiracion]
  static final tokenExpiracion =
      QueryIntegerProperty<Session>(_entities[8].properties[19]);
}

/// [SubChannel] entity fields to define ObjectBox queries.
class SubChannel_ {
  /// see [SubChannel.id]
  static final id =
      QueryIntegerProperty<SubChannel>(_entities[9].properties[0]);

  /// see [SubChannel.subcanalid]
  static final subcanalid =
      QueryStringProperty<SubChannel>(_entities[9].properties[1]);

  /// see [SubChannel.nombre]
  static final nombre =
      QueryStringProperty<SubChannel>(_entities[9].properties[2]);

  /// see [SubChannel.client]
  static final client =
      QueryRelationToOne<SubChannel, Client>(_entities[9].properties[3]);
}

/// [SyncManager] entity fields to define ObjectBox queries.
class SyncManager_ {
  /// see [SyncManager.id]
  static final id =
      QueryIntegerProperty<SyncManager>(_entities[10].properties[0]);

  /// see [SyncManager.zoneId]
  static final zoneId =
      QueryStringProperty<SyncManager>(_entities[10].properties[1]);

  /// see [SyncManager.syncType]
  static final syncType =
      QueryStringProperty<SyncManager>(_entities[10].properties[2]);

  /// see [SyncManager.lastSyncDownDate]
  static final lastSyncDownDate =
      QueryIntegerProperty<SyncManager>(_entities[10].properties[3]);

  /// see [SyncManager.lastSyncUpDate]
  static final lastSyncUpDate =
      QueryIntegerProperty<SyncManager>(_entities[10].properties[4]);
}

/// [Ubigeo] entity fields to define ObjectBox queries.
class Ubigeo_ {
  /// see [Ubigeo.id]
  static final id = QueryIntegerProperty<Ubigeo>(_entities[11].properties[0]);

  /// see [Ubigeo.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Ubigeo>(_entities[11].properties[1]);

  /// see [Ubigeo.nombre]
  static final nombre =
      QueryStringProperty<Ubigeo>(_entities[11].properties[2]);

  /// see [Ubigeo.client]
  static final client =
      QueryRelationToOne<Ubigeo, Client>(_entities[11].properties[3]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<User>(_entities[12].properties[0]);

  /// see [User.usuario]
  static final usuario = QueryStringProperty<User>(_entities[12].properties[1]);

  /// see [User.descripcion]
  static final descripcion =
      QueryStringProperty<User>(_entities[12].properties[2]);

  /// see [User.correo]
  static final correo = QueryStringProperty<User>(_entities[12].properties[3]);

  /// see [User.activo]
  static final activo = QueryBooleanProperty<User>(_entities[12].properties[4]);

  /// see [User.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<User>(_entities[12].properties[5]);

  /// see [User.rolid]
  static final rolid = QueryIntegerProperty<User>(_entities[12].properties[6]);

  /// see [User.token]
  static final token = QueryStringProperty<User>(_entities[12].properties[7]);

  /// see [User.telefono]
  static final telefono =
      QueryStringProperty<User>(_entities[12].properties[8]);

  /// see [User.creado]
  static final creado = QueryStringProperty<User>(_entities[12].properties[9]);

  /// see [User.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<User>(_entities[12].properties[10]);

  /// see [User.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<User>(_entities[12].properties[11]);

  /// see [User.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<User>(_entities[12].properties[12]);
}

/// [Vendor] entity fields to define ObjectBox queries.
class Vendor_ {
  /// see [Vendor.id]
  static final id = QueryIntegerProperty<Vendor>(_entities[13].properties[0]);

  /// see [Vendor.username]
  static final username =
      QueryStringProperty<Vendor>(_entities[13].properties[1]);

  /// see [Vendor.password]
  static final password =
      QueryStringProperty<Vendor>(_entities[13].properties[2]);

  /// see [Vendor.name]
  static final name = QueryStringProperty<Vendor>(_entities[13].properties[3]);

  /// see [Vendor.zone]
  static final zone = QueryStringProperty<Vendor>(_entities[13].properties[4]);
}

/// [Zone] entity fields to define ObjectBox queries.
class Zone_ {
  /// see [Zone.id]
  static final id = QueryIntegerProperty<Zone>(_entities[14].properties[0]);

  /// see [Zone.zonaid]
  static final zonaid = QueryStringProperty<Zone>(_entities[14].properties[1]);

  /// see [Zone.nombre]
  static final nombre = QueryStringProperty<Zone>(_entities[14].properties[2]);

  /// see [Zone.vendedorid]
  static final vendedorid =
      QueryStringProperty<Zone>(_entities[14].properties[3]);

  /// see [Zone.canalid]
  static final canalid = QueryStringProperty<Zone>(_entities[14].properties[4]);

  /// see [Zone.subcanalid]
  static final subcanalid =
      QueryStringProperty<Zone>(_entities[14].properties[5]);

  /// see [Zone.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Zone>(_entities[14].properties[6]);

  /// see [Zone.activo]
  static final activo = QueryBooleanProperty<Zone>(_entities[14].properties[7]);

  /// see [Zone.session]
  static final session =
      QueryRelationToOne<Zone, Session>(_entities[14].properties[8]);
}
