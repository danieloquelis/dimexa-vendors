// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../models/address/address.dart';
import '../../models/client/client.dart';
import '../../models/client_status/client_status.dart';
import '../../models/contact/contact.dart';
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
      id: const IdUid(1, 1352357758425342038),
      name: 'Address',
      lastPropertyId: const IdUid(16, 3782115233707284849),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5028680745171113995),
            name: 'clientedireccionid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 5630833728221403929),
            name: 'clienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 965174023642049277),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2566726742043736699),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4945855947669036134),
            name: 'referencia',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3502761965796216246),
            name: 'tipoprioridadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7364641330284363865),
            name: 'tipoestablecimientoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 447892296743092120),
            name: 'latitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 3375069050505854810),
            name: 'longitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 118209363876226521),
            name: 'creado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 8649947519318569376),
            name: 'actualizado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 6135441051002570740),
            name: 'descargado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 5939202991538089418),
            name: 'sincronizado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 9222145396493651840),
            name: 'usuarioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 4435636431275493898),
            name: 'tipoestablecimiento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 3782115233707284849),
            name: 'tipoprioridad',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 1330410600785952729),
      name: 'Client',
      lastPropertyId: const IdUid(39, 6354503210402409484),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8423510956819072555),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 4006154138697700313),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(1, 213646851382741109)),
        ModelProperty(
            id: const IdUid(3, 7924066711208337494),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2300420064888807848),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 570881502912033514),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2959037954579895486),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 6201080571488234006),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 2682804440776722705),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 717748476862473083),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 4109092389548437040),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1008214070188700711),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 6935810237262644575),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1220501127523686686),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 2429187474592606836),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 5200748510404975680),
            name: 'diavisita1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 398768803480961625),
            name: 'diavisita2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 5196000234790162623),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 3476474037517350809),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 8306391147401864674),
            name: 'aniversario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 8865447244328917037),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 8456149269063275526),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 7755874175469854525),
            name: 'lineacredito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 8459974405524542371),
            name: 'deuda',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 916017236525445050),
            name: 'lineadisponible',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 8432143029379641550),
            name: 'ubigeo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 6161073750575316724),
            name: 'estadocliente',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(27, 8412786333578459932),
            name: 'estadodirem',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(28, 6822026394521123829),
            name: 'tipodescuento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(29, 4478349098332277856),
            name: 'subcanal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(30, 1555380318694725147),
            name: 'clientedireccionubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(31, 932045495252409665),
            name: 'clientedirecciondireccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(32, 8414995906858470630),
            name: 'clientedireccionreferencia',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(33, 487094061860128464),
            name: 'tipoprioridadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(34, 1803561351619515887),
            name: 'tipoprioridad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(35, 1175922522435127604),
            name: 'tipoestablecimientoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(36, 5644788363354666852),
            name: 'tipoestablecimiento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(37, 358574144187928246),
            name: 'latitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(38, 3840276692868380203),
            name: 'longitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(39, 6354503210402409484),
            name: 'lastSync',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 4731673034686240136),
      name: 'ClientStatus',
      lastPropertyId: const IdUid(4, 8116559078189485235),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4986513469643395555),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4234360556782479743),
            name: 'estadoclienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(2, 3941834913969538015)),
        ModelProperty(
            id: const IdUid(3, 3331853514736427216),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8116559078189485235),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(3, 6200033699311967371),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 7735779941666946743),
      name: 'Contact',
      lastPropertyId: const IdUid(9, 7575241085540230462),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2459824061475679475),
            name: 'clientecontactoid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 3216230855722337813),
            name: 'contactoak',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4011042536066964850),
            name: 'clienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4345396402195002246),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3032506627578196668),
            name: 'tipocontactoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7322855329549104758),
            name: 'fechanacimiento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7819505558821785499),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6700419392091186509),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 7575241085540230462),
            name: 'tipocontacto',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 7500406617167670316),
      name: 'DiremidStatus',
      lastPropertyId: const IdUid(4, 8002929363481953807),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3456405945687692950),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 616009932699348851),
            name: 'estadodiremidid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(4, 9207828010739867781)),
        ModelProperty(
            id: const IdUid(3, 4589278063905215978),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8002929363481953807),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(5, 3379108778464691307),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 5116421731137523285),
      name: 'DiscountType',
      lastPropertyId: const IdUid(4, 6396019472428893961),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 608863421702930962),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 753030562169244030),
            name: 'tipodescuentoid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(6, 1294578651317995998)),
        ModelProperty(
            id: const IdUid(3, 5771874075964711457),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6396019472428893961),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(7, 2945105390110541058),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 8231132262644580675),
      name: 'Menu',
      lastPropertyId: const IdUid(6, 619788807766536137),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6938664420042841706),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4834444605499882458),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2299546172581013620),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 417192781556278294),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5779058243072502077),
            name: 'orden',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 619788807766536137),
            name: 'acceso',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 8132390438539159368),
      name: 'MenuFav',
      lastPropertyId: const IdUid(5, 1924730198351686130),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 9110979621686850838),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3702623293231024001),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3548714624307253118),
            name: 'titulo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6253326504561556162),
            name: 'ruta',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1924730198351686130),
            name: 'orden',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 8962049122969229060),
      name: 'Role',
      lastPropertyId: const IdUid(3, 471863785653292005),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1309954123082777368),
            name: 'rolid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4421334553249080641),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 471863785653292005),
            name: 'roleMenuId',
            type: 11,
            flags: 520,
            indexId: const IdUid(8, 4000449305036946592),
            relationTarget: 'RoleMenu')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 447996813049732365),
      name: 'RoleMenu',
      lastPropertyId: const IdUid(4, 5643853984706506975),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 692472206197186311),
            name: 'rolmenuid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 239494444511648364),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 5541344390511018503),
            name: 'menuid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5643853984706506975),
            name: 'registrado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(11, 670101644476955989),
      name: 'Session',
      lastPropertyId: const IdUid(20, 1685656458476349900),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 743062350062925193),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1106572208233953079),
            name: 'deviceToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 340955750979916816),
            name: 'usuarioid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5362179075973938665),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8901070543638349813),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7925086272929983694),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7183857109962158370),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 8705020579367676671),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5122054671400035273),
            name: 'motivobloqueoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 4315860742425142417),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1992386234892143147),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5703729926669381839),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 6864257885463019105),
            name: 'creado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 4730131442437170980),
            name: 'actualizado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 7449838203092679089),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 895227248289244575),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 9170134647869135217),
            name: 'menuidFav3',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 1349478062183001316),
            name: 'motivobloqueo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 5970833939610985597),
            name: 'fechaExpiracion',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 1685656458476349900),
            name: 'tokenExpiracion',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'zones', srcEntity: 'Zone', srcField: 'session')
      ]),
  ModelEntity(
      id: const IdUid(12, 7316367034028052482),
      name: 'SubChannel',
      lastPropertyId: const IdUid(4, 604708071432769089),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 519905744809185010),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8494783146090785132),
            name: 'subcanalid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(9, 894786305182622328)),
        ModelProperty(
            id: const IdUid(3, 7170696707540780261),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 604708071432769089),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(10, 6997823590811987237),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(13, 6506461208677749186),
      name: 'SyncManager',
      lastPropertyId: const IdUid(5, 8314546442199440139),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 9208826943885939752),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1767209544534284553),
            name: 'zoneId',
            type: 9,
            flags: 2048,
            indexId: const IdUid(11, 5671629088526967157)),
        ModelProperty(
            id: const IdUid(3, 2670552184424742092),
            name: 'syncType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8834118671014819357),
            name: 'lastSyncDownDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8314546442199440139),
            name: 'lastSyncUpDate',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(14, 3080546480979458209),
      name: 'Ubigeo',
      lastPropertyId: const IdUid(4, 3959782640394342260),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7493551009873083242),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5267832687108559394),
            name: 'ubigeoid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(12, 168447472078706818)),
        ModelProperty(
            id: const IdUid(3, 4821432877572357513),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3959782640394342260),
            name: 'clientId',
            type: 11,
            flags: 520,
            indexId: const IdUid(13, 1037722445454940927),
            relationTarget: 'Client')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(15, 124387529150130441),
      name: 'User',
      lastPropertyId: const IdUid(13, 8649731782597715939),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8011498837331689280),
            name: 'usuarioid',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1667126105267769636),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4540752439419924836),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1626903225110567618),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1428382970166443132),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 9064241760819869553),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 1123424460463011852),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 7719370062155154973),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 2310625808121738510),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2552969127863915574),
            name: 'creado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 6708347951751749511),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 2527563014864554282),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 8649731782597715939),
            name: 'menuidFav3',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(16, 7237481001992173610),
      name: 'Vendor',
      lastPropertyId: const IdUid(5, 8291980906813707833),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2595615352541978032),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4218317957283351251),
            name: 'username',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7954608707858859433),
            name: 'password',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3672158979611143250),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8291980906813707833),
            name: 'zone',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(17, 2070541889657199523),
      name: 'Zone',
      lastPropertyId: const IdUid(9, 6298157858931476617),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 482969105966468581),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 5467321902841245494),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1785475930169450345),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 942999469322271772),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5683391615149077922),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2817324663318110534),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4855426848298087379),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 884533443731530537),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 6298157858931476617),
            name: 'sessionId',
            type: 11,
            flags: 520,
            indexId: const IdUid(14, 4118761698383431384),
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
      lastEntityId: const IdUid(17, 2070541889657199523),
      lastIndexId: const IdUid(14, 4118761698383431384),
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
    Address: EntityDefinition<Address>(
        model: _entities[0],
        toOneRelations: (Address object) => [],
        toManyRelations: (Address object) => {},
        getId: (Address object) => object.clientedireccionid,
        setId: (Address object, int id) {
          object.clientedireccionid = id;
        },
        objectToFB: (Address object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final ubigeoidOffset = object.ubigeoid == null
              ? null
              : fbb.writeString(object.ubigeoid!);
          final direccionOffset = object.direccion == null
              ? null
              : fbb.writeString(object.direccion!);
          final referenciaOffset = object.referencia == null
              ? null
              : fbb.writeString(object.referencia!);
          final latitudOffset =
              object.latitud == null ? null : fbb.writeString(object.latitud!);
          final longitudOffset = object.longitud == null
              ? null
              : fbb.writeString(object.longitud!);
          final descargadoOffset = object.descargado == null
              ? null
              : fbb.writeString(object.descargado!);
          final sincronizadoOffset = object.sincronizado == null
              ? null
              : fbb.writeString(object.sincronizado!);
          final usuarioidOffset = object.usuarioid == null
              ? null
              : fbb.writeString(object.usuarioid!);
          final tipoestablecimientoOffset = object.tipoestablecimiento == null
              ? null
              : fbb.writeString(object.tipoestablecimiento!);
          final tipoprioridadOffset = object.tipoprioridad == null
              ? null
              : fbb.writeString(object.tipoprioridad!);
          fbb.startTable(17);
          fbb.addInt64(0, object.clientedireccionid ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, ubigeoidOffset);
          fbb.addOffset(3, direccionOffset);
          fbb.addOffset(4, referenciaOffset);
          fbb.addInt64(5, object.tipoprioridadid);
          fbb.addInt64(6, object.tipoestablecimientoid);
          fbb.addOffset(7, latitudOffset);
          fbb.addOffset(8, longitudOffset);
          fbb.addInt64(9, object.creado?.millisecondsSinceEpoch);
          fbb.addInt64(10, object.actualizado?.millisecondsSinceEpoch);
          fbb.addOffset(11, descargadoOffset);
          fbb.addOffset(12, sincronizadoOffset);
          fbb.addOffset(13, usuarioidOffset);
          fbb.addOffset(14, tipoestablecimientoOffset);
          fbb.addOffset(15, tipoprioridadOffset);
          fbb.finish(fbb.endTable());
          return object.clientedireccionid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final creadoValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 22);
          final actualizadoValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 24);
          final object = Address(
              clientedireccionid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              ubigeoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              direccion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              referencia: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              tipoprioridadid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              tipoestablecimientoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              latitud: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              longitud: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              creado: creadoValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(creadoValue),
              actualizado: actualizadoValue == null ? null : DateTime.fromMillisecondsSinceEpoch(actualizadoValue),
              descargado: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              sincronizado: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              usuarioid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              tipoestablecimiento: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              tipoprioridad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34));

          return object;
        }),
    Client: EntityDefinition<Client>(
        model: _entities[1],
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
          final aniversarioOffset = object.aniversario == null
              ? null
              : fbb.writeString(object.aniversario!);
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
          final ubigeoOffset =
              object.ubigeo == null ? null : fbb.writeString(object.ubigeo!);
          final estadoclienteOffset = object.estadocliente == null
              ? null
              : fbb.writeString(object.estadocliente!);
          final estadodiremOffset = object.estadodirem == null
              ? null
              : fbb.writeString(object.estadodirem!);
          final tipodescuentoOffset = object.tipodescuento == null
              ? null
              : fbb.writeString(object.tipodescuento!);
          final subcanalOffset = object.subcanal == null
              ? null
              : fbb.writeString(object.subcanal!);
          final clientedireccionubigeoidOffset =
              object.clientedireccionubigeoid == null
                  ? null
                  : fbb.writeString(object.clientedireccionubigeoid!);
          final clientedirecciondireccionOffset =
              object.clientedirecciondireccion == null
                  ? null
                  : fbb.writeString(object.clientedirecciondireccion!);
          final clientedireccionreferenciaOffset =
              object.clientedireccionreferencia == null
                  ? null
                  : fbb.writeString(object.clientedireccionreferencia!);
          final tipoprioridadOffset = object.tipoprioridad == null
              ? null
              : fbb.writeString(object.tipoprioridad!);
          final tipoestablecimientoOffset = object.tipoestablecimiento == null
              ? null
              : fbb.writeString(object.tipoestablecimiento!);
          final latitudOffset =
              object.latitud == null ? null : fbb.writeString(object.latitud!);
          final longitudOffset = object.longitud == null
              ? null
              : fbb.writeString(object.longitud!);
          fbb.startTable(40);
          fbb.addInt64(0, object.id ?? 0);
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
          fbb.addOffset(18, aniversarioOffset);
          fbb.addOffset(19, telefonoOffset);
          fbb.addOffset(20, movilOffset);
          fbb.addOffset(21, lineacreditoOffset);
          fbb.addOffset(22, deudaOffset);
          fbb.addOffset(23, lineadisponibleOffset);
          fbb.addOffset(24, ubigeoOffset);
          fbb.addOffset(25, estadoclienteOffset);
          fbb.addOffset(26, estadodiremOffset);
          fbb.addOffset(27, tipodescuentoOffset);
          fbb.addOffset(28, subcanalOffset);
          fbb.addOffset(29, clientedireccionubigeoidOffset);
          fbb.addOffset(30, clientedirecciondireccionOffset);
          fbb.addOffset(31, clientedireccionreferenciaOffset);
          fbb.addInt64(32, object.tipoprioridadid);
          fbb.addOffset(33, tipoprioridadOffset);
          fbb.addInt64(34, object.tipoestablecimientoid);
          fbb.addOffset(35, tipoestablecimientoOffset);
          fbb.addOffset(36, latitudOffset);
          fbb.addOffset(37, longitudOffset);
          fbb.addInt64(38, object.lastSync?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final lastSyncValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 80);
          final object = Client(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
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
              condicionventaid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              tipodescuentoid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              subcanalid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              diavisita1: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              diavisita2: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34),
              representantelegal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              dni: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 38),
              aniversario: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 40),
              telefono: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 42),
              movil: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 44),
              lineacredito: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 46),
              deuda: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 48),
              lineadisponible: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 50),
              ubigeo: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 52),
              estadocliente: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 54),
              estadodirem: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 56),
              tipodescuento: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 58),
              subcanal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 60),
              clientedireccionubigeoid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 62),
              clientedirecciondireccion: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 64),
              clientedireccionreferencia: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 66),
              tipoprioridadid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 68),
              tipoprioridad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 70),
              tipoestablecimientoid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 72),
              tipoestablecimiento: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 74),
              latitud: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 76),
              longitud: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 78),
              lastSync: lastSyncValue == null ? null : DateTime.fromMillisecondsSinceEpoch(lastSyncValue));

          return object;
        }),
    ClientStatus: EntityDefinition<ClientStatus>(
        model: _entities[2],
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
    Contact: EntityDefinition<Contact>(
        model: _entities[3],
        toOneRelations: (Contact object) => [],
        toManyRelations: (Contact object) => {},
        getId: (Contact object) => object.clientecontactoid,
        setId: (Contact object, int id) {
          object.clientecontactoid = id;
        },
        objectToFB: (Contact object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final nombreOffset =
              object.nombre == null ? null : fbb.writeString(object.nombre!);
          final fechanacimientoOffset = object.fechanacimiento == null
              ? null
              : fbb.writeString(object.fechanacimiento!);
          final telefonoOffset = object.telefono == null
              ? null
              : fbb.writeString(object.telefono!);
          final correoOffset =
              object.correo == null ? null : fbb.writeString(object.correo!);
          final tipocontactoOffset = object.tipocontacto == null
              ? null
              : fbb.writeString(object.tipocontacto!);
          fbb.startTable(10);
          fbb.addInt64(0, object.clientecontactoid ?? 0);
          fbb.addInt64(1, object.contactoak);
          fbb.addOffset(2, clienteidOffset);
          fbb.addOffset(3, nombreOffset);
          fbb.addInt64(4, object.tipocontactoid);
          fbb.addOffset(5, fechanacimientoOffset);
          fbb.addOffset(6, telefonoOffset);
          fbb.addOffset(7, correoOffset);
          fbb.addOffset(8, tipocontactoOffset);
          fbb.finish(fbb.endTable());
          return object.clientecontactoid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Contact(
              clientecontactoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              contactoak: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              tipocontactoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              fechanacimiento: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              telefono: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              correo: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              tipocontacto: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20));

          return object;
        }),
    DiremidStatus: EntityDefinition<DiremidStatus>(
        model: _entities[4],
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
        model: _entities[5],
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
        model: _entities[6],
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
        model: _entities[7],
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
        model: _entities[8],
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
        model: _entities[9],
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
        model: _entities[10],
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
        model: _entities[11],
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
        model: _entities[12],
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
        model: _entities[13],
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
        model: _entities[14],
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
        model: _entities[15],
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
        model: _entities[16],
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

/// [Address] entity fields to define ObjectBox queries.
class Address_ {
  /// see [Address.clientedireccionid]
  static final clientedireccionid =
      QueryIntegerProperty<Address>(_entities[0].properties[0]);

  /// see [Address.clienteid]
  static final clienteid =
      QueryStringProperty<Address>(_entities[0].properties[1]);

  /// see [Address.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Address>(_entities[0].properties[2]);

  /// see [Address.direccion]
  static final direccion =
      QueryStringProperty<Address>(_entities[0].properties[3]);

  /// see [Address.referencia]
  static final referencia =
      QueryStringProperty<Address>(_entities[0].properties[4]);

  /// see [Address.tipoprioridadid]
  static final tipoprioridadid =
      QueryIntegerProperty<Address>(_entities[0].properties[5]);

  /// see [Address.tipoestablecimientoid]
  static final tipoestablecimientoid =
      QueryIntegerProperty<Address>(_entities[0].properties[6]);

  /// see [Address.latitud]
  static final latitud =
      QueryStringProperty<Address>(_entities[0].properties[7]);

  /// see [Address.longitud]
  static final longitud =
      QueryStringProperty<Address>(_entities[0].properties[8]);

  /// see [Address.creado]
  static final creado =
      QueryIntegerProperty<Address>(_entities[0].properties[9]);

  /// see [Address.actualizado]
  static final actualizado =
      QueryIntegerProperty<Address>(_entities[0].properties[10]);

  /// see [Address.descargado]
  static final descargado =
      QueryStringProperty<Address>(_entities[0].properties[11]);

  /// see [Address.sincronizado]
  static final sincronizado =
      QueryStringProperty<Address>(_entities[0].properties[12]);

  /// see [Address.usuarioid]
  static final usuarioid =
      QueryStringProperty<Address>(_entities[0].properties[13]);

  /// see [Address.tipoestablecimiento]
  static final tipoestablecimiento =
      QueryStringProperty<Address>(_entities[0].properties[14]);

  /// see [Address.tipoprioridad]
  static final tipoprioridad =
      QueryStringProperty<Address>(_entities[0].properties[15]);
}

/// [Client] entity fields to define ObjectBox queries.
class Client_ {
  /// see [Client.id]
  static final id = QueryIntegerProperty<Client>(_entities[1].properties[0]);

  /// see [Client.clienteid]
  static final clienteid =
      QueryStringProperty<Client>(_entities[1].properties[1]);

  /// see [Client.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Client>(_entities[1].properties[2]);

  /// see [Client.ruc]
  static final ruc = QueryStringProperty<Client>(_entities[1].properties[3]);

  /// see [Client.razonsocial]
  static final razonsocial =
      QueryStringProperty<Client>(_entities[1].properties[4]);

  /// see [Client.nombrecomercial]
  static final nombrecomercial =
      QueryStringProperty<Client>(_entities[1].properties[5]);

  /// see [Client.zonaid]
  static final zonaid = QueryStringProperty<Client>(_entities[1].properties[6]);

  /// see [Client.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Client>(_entities[1].properties[7]);

  /// see [Client.direccion]
  static final direccion =
      QueryStringProperty<Client>(_entities[1].properties[8]);

  /// see [Client.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<Client>(_entities[1].properties[9]);

  /// see [Client.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<Client>(_entities[1].properties[10]);

  /// see [Client.condicionventaid]
  static final condicionventaid =
      QueryStringProperty<Client>(_entities[1].properties[11]);

  /// see [Client.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<Client>(_entities[1].properties[12]);

  /// see [Client.subcanalid]
  static final subcanalid =
      QueryStringProperty<Client>(_entities[1].properties[13]);

  /// see [Client.diavisita1]
  static final diavisita1 =
      QueryStringProperty<Client>(_entities[1].properties[14]);

  /// see [Client.diavisita2]
  static final diavisita2 =
      QueryStringProperty<Client>(_entities[1].properties[15]);

  /// see [Client.representantelegal]
  static final representantelegal =
      QueryStringProperty<Client>(_entities[1].properties[16]);

  /// see [Client.dni]
  static final dni = QueryStringProperty<Client>(_entities[1].properties[17]);

  /// see [Client.aniversario]
  static final aniversario =
      QueryStringProperty<Client>(_entities[1].properties[18]);

  /// see [Client.telefono]
  static final telefono =
      QueryStringProperty<Client>(_entities[1].properties[19]);

  /// see [Client.movil]
  static final movil = QueryStringProperty<Client>(_entities[1].properties[20]);

  /// see [Client.lineacredito]
  static final lineacredito =
      QueryStringProperty<Client>(_entities[1].properties[21]);

  /// see [Client.deuda]
  static final deuda = QueryStringProperty<Client>(_entities[1].properties[22]);

  /// see [Client.lineadisponible]
  static final lineadisponible =
      QueryStringProperty<Client>(_entities[1].properties[23]);

  /// see [Client.ubigeo]
  static final ubigeo =
      QueryStringProperty<Client>(_entities[1].properties[24]);

  /// see [Client.estadocliente]
  static final estadocliente =
      QueryStringProperty<Client>(_entities[1].properties[25]);

  /// see [Client.estadodirem]
  static final estadodirem =
      QueryStringProperty<Client>(_entities[1].properties[26]);

  /// see [Client.tipodescuento]
  static final tipodescuento =
      QueryStringProperty<Client>(_entities[1].properties[27]);

  /// see [Client.subcanal]
  static final subcanal =
      QueryStringProperty<Client>(_entities[1].properties[28]);

  /// see [Client.clientedireccionubigeoid]
  static final clientedireccionubigeoid =
      QueryStringProperty<Client>(_entities[1].properties[29]);

  /// see [Client.clientedirecciondireccion]
  static final clientedirecciondireccion =
      QueryStringProperty<Client>(_entities[1].properties[30]);

  /// see [Client.clientedireccionreferencia]
  static final clientedireccionreferencia =
      QueryStringProperty<Client>(_entities[1].properties[31]);

  /// see [Client.tipoprioridadid]
  static final tipoprioridadid =
      QueryIntegerProperty<Client>(_entities[1].properties[32]);

  /// see [Client.tipoprioridad]
  static final tipoprioridad =
      QueryStringProperty<Client>(_entities[1].properties[33]);

  /// see [Client.tipoestablecimientoid]
  static final tipoestablecimientoid =
      QueryIntegerProperty<Client>(_entities[1].properties[34]);

  /// see [Client.tipoestablecimiento]
  static final tipoestablecimiento =
      QueryStringProperty<Client>(_entities[1].properties[35]);

  /// see [Client.latitud]
  static final latitud =
      QueryStringProperty<Client>(_entities[1].properties[36]);

  /// see [Client.longitud]
  static final longitud =
      QueryStringProperty<Client>(_entities[1].properties[37]);

  /// see [Client.lastSync]
  static final lastSync =
      QueryIntegerProperty<Client>(_entities[1].properties[38]);
}

/// [ClientStatus] entity fields to define ObjectBox queries.
class ClientStatus_ {
  /// see [ClientStatus.id]
  static final id =
      QueryIntegerProperty<ClientStatus>(_entities[2].properties[0]);

  /// see [ClientStatus.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<ClientStatus>(_entities[2].properties[1]);

  /// see [ClientStatus.nombre]
  static final nombre =
      QueryStringProperty<ClientStatus>(_entities[2].properties[2]);

  /// see [ClientStatus.client]
  static final client =
      QueryRelationToOne<ClientStatus, Client>(_entities[2].properties[3]);
}

/// [Contact] entity fields to define ObjectBox queries.
class Contact_ {
  /// see [Contact.clientecontactoid]
  static final clientecontactoid =
      QueryIntegerProperty<Contact>(_entities[3].properties[0]);

  /// see [Contact.contactoak]
  static final contactoak =
      QueryIntegerProperty<Contact>(_entities[3].properties[1]);

  /// see [Contact.clienteid]
  static final clienteid =
      QueryStringProperty<Contact>(_entities[3].properties[2]);

  /// see [Contact.nombre]
  static final nombre =
      QueryStringProperty<Contact>(_entities[3].properties[3]);

  /// see [Contact.tipocontactoid]
  static final tipocontactoid =
      QueryIntegerProperty<Contact>(_entities[3].properties[4]);

  /// see [Contact.fechanacimiento]
  static final fechanacimiento =
      QueryStringProperty<Contact>(_entities[3].properties[5]);

  /// see [Contact.telefono]
  static final telefono =
      QueryStringProperty<Contact>(_entities[3].properties[6]);

  /// see [Contact.correo]
  static final correo =
      QueryStringProperty<Contact>(_entities[3].properties[7]);

  /// see [Contact.tipocontacto]
  static final tipocontacto =
      QueryStringProperty<Contact>(_entities[3].properties[8]);
}

/// [DiremidStatus] entity fields to define ObjectBox queries.
class DiremidStatus_ {
  /// see [DiremidStatus.id]
  static final id =
      QueryIntegerProperty<DiremidStatus>(_entities[4].properties[0]);

  /// see [DiremidStatus.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<DiremidStatus>(_entities[4].properties[1]);

  /// see [DiremidStatus.nombre]
  static final nombre =
      QueryStringProperty<DiremidStatus>(_entities[4].properties[2]);

  /// see [DiremidStatus.client]
  static final client =
      QueryRelationToOne<DiremidStatus, Client>(_entities[4].properties[3]);
}

/// [DiscountType] entity fields to define ObjectBox queries.
class DiscountType_ {
  /// see [DiscountType.id]
  static final id =
      QueryIntegerProperty<DiscountType>(_entities[5].properties[0]);

  /// see [DiscountType.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<DiscountType>(_entities[5].properties[1]);

  /// see [DiscountType.nombre]
  static final nombre =
      QueryStringProperty<DiscountType>(_entities[5].properties[2]);

  /// see [DiscountType.client]
  static final client =
      QueryRelationToOne<DiscountType, Client>(_entities[5].properties[3]);
}

/// [Menu] entity fields to define ObjectBox queries.
class Menu_ {
  /// see [Menu.id]
  static final id = QueryIntegerProperty<Menu>(_entities[6].properties[0]);

  /// see [Menu.menuid]
  static final menuid = QueryStringProperty<Menu>(_entities[6].properties[1]);

  /// see [Menu.titulo]
  static final titulo = QueryStringProperty<Menu>(_entities[6].properties[2]);

  /// see [Menu.ruta]
  static final ruta = QueryStringProperty<Menu>(_entities[6].properties[3]);

  /// see [Menu.orden]
  static final orden = QueryIntegerProperty<Menu>(_entities[6].properties[4]);

  /// see [Menu.acceso]
  static final acceso = QueryBooleanProperty<Menu>(_entities[6].properties[5]);
}

/// [MenuFav] entity fields to define ObjectBox queries.
class MenuFav_ {
  /// see [MenuFav.id]
  static final id = QueryIntegerProperty<MenuFav>(_entities[7].properties[0]);

  /// see [MenuFav.menuid]
  static final menuid =
      QueryStringProperty<MenuFav>(_entities[7].properties[1]);

  /// see [MenuFav.titulo]
  static final titulo =
      QueryStringProperty<MenuFav>(_entities[7].properties[2]);

  /// see [MenuFav.ruta]
  static final ruta = QueryStringProperty<MenuFav>(_entities[7].properties[3]);

  /// see [MenuFav.orden]
  static final orden =
      QueryIntegerProperty<MenuFav>(_entities[7].properties[4]);
}

/// [Role] entity fields to define ObjectBox queries.
class Role_ {
  /// see [Role.rolid]
  static final rolid = QueryIntegerProperty<Role>(_entities[8].properties[0]);

  /// see [Role.nombre]
  static final nombre = QueryStringProperty<Role>(_entities[8].properties[1]);

  /// see [Role.roleMenu]
  static final roleMenu =
      QueryRelationToOne<Role, RoleMenu>(_entities[8].properties[2]);
}

/// [RoleMenu] entity fields to define ObjectBox queries.
class RoleMenu_ {
  /// see [RoleMenu.rolmenuid]
  static final rolmenuid =
      QueryIntegerProperty<RoleMenu>(_entities[9].properties[0]);

  /// see [RoleMenu.rolid]
  static final rolid =
      QueryIntegerProperty<RoleMenu>(_entities[9].properties[1]);

  /// see [RoleMenu.menuid]
  static final menuid =
      QueryStringProperty<RoleMenu>(_entities[9].properties[2]);

  /// see [RoleMenu.registrado]
  static final registrado =
      QueryStringProperty<RoleMenu>(_entities[9].properties[3]);
}

/// [Session] entity fields to define ObjectBox queries.
class Session_ {
  /// see [Session.id]
  static final id = QueryIntegerProperty<Session>(_entities[10].properties[0]);

  /// see [Session.deviceToken]
  static final deviceToken =
      QueryStringProperty<Session>(_entities[10].properties[1]);

  /// see [Session.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<Session>(_entities[10].properties[2]);

  /// see [Session.usuario]
  static final usuario =
      QueryStringProperty<Session>(_entities[10].properties[3]);

  /// see [Session.descripcion]
  static final descripcion =
      QueryStringProperty<Session>(_entities[10].properties[4]);

  /// see [Session.correo]
  static final correo =
      QueryStringProperty<Session>(_entities[10].properties[5]);

  /// see [Session.activo]
  static final activo =
      QueryBooleanProperty<Session>(_entities[10].properties[6]);

  /// see [Session.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<Session>(_entities[10].properties[7]);

  /// see [Session.motivobloqueoid]
  static final motivobloqueoid =
      QueryIntegerProperty<Session>(_entities[10].properties[8]);

  /// see [Session.rolid]
  static final rolid =
      QueryIntegerProperty<Session>(_entities[10].properties[9]);

  /// see [Session.token]
  static final token =
      QueryStringProperty<Session>(_entities[10].properties[10]);

  /// see [Session.telefono]
  static final telefono =
      QueryStringProperty<Session>(_entities[10].properties[11]);

  /// see [Session.creado]
  static final creado =
      QueryIntegerProperty<Session>(_entities[10].properties[12]);

  /// see [Session.actualizado]
  static final actualizado =
      QueryIntegerProperty<Session>(_entities[10].properties[13]);

  /// see [Session.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<Session>(_entities[10].properties[14]);

  /// see [Session.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<Session>(_entities[10].properties[15]);

  /// see [Session.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<Session>(_entities[10].properties[16]);

  /// see [Session.motivobloqueo]
  static final motivobloqueo =
      QueryStringProperty<Session>(_entities[10].properties[17]);

  /// see [Session.fechaExpiracion]
  static final fechaExpiracion =
      QueryIntegerProperty<Session>(_entities[10].properties[18]);

  /// see [Session.tokenExpiracion]
  static final tokenExpiracion =
      QueryIntegerProperty<Session>(_entities[10].properties[19]);
}

/// [SubChannel] entity fields to define ObjectBox queries.
class SubChannel_ {
  /// see [SubChannel.id]
  static final id =
      QueryIntegerProperty<SubChannel>(_entities[11].properties[0]);

  /// see [SubChannel.subcanalid]
  static final subcanalid =
      QueryStringProperty<SubChannel>(_entities[11].properties[1]);

  /// see [SubChannel.nombre]
  static final nombre =
      QueryStringProperty<SubChannel>(_entities[11].properties[2]);

  /// see [SubChannel.client]
  static final client =
      QueryRelationToOne<SubChannel, Client>(_entities[11].properties[3]);
}

/// [SyncManager] entity fields to define ObjectBox queries.
class SyncManager_ {
  /// see [SyncManager.id]
  static final id =
      QueryIntegerProperty<SyncManager>(_entities[12].properties[0]);

  /// see [SyncManager.zoneId]
  static final zoneId =
      QueryStringProperty<SyncManager>(_entities[12].properties[1]);

  /// see [SyncManager.syncType]
  static final syncType =
      QueryStringProperty<SyncManager>(_entities[12].properties[2]);

  /// see [SyncManager.lastSyncDownDate]
  static final lastSyncDownDate =
      QueryIntegerProperty<SyncManager>(_entities[12].properties[3]);

  /// see [SyncManager.lastSyncUpDate]
  static final lastSyncUpDate =
      QueryIntegerProperty<SyncManager>(_entities[12].properties[4]);
}

/// [Ubigeo] entity fields to define ObjectBox queries.
class Ubigeo_ {
  /// see [Ubigeo.id]
  static final id = QueryIntegerProperty<Ubigeo>(_entities[13].properties[0]);

  /// see [Ubigeo.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Ubigeo>(_entities[13].properties[1]);

  /// see [Ubigeo.nombre]
  static final nombre =
      QueryStringProperty<Ubigeo>(_entities[13].properties[2]);

  /// see [Ubigeo.client]
  static final client =
      QueryRelationToOne<Ubigeo, Client>(_entities[13].properties[3]);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.usuarioid]
  static final usuarioid =
      QueryIntegerProperty<User>(_entities[14].properties[0]);

  /// see [User.usuario]
  static final usuario = QueryStringProperty<User>(_entities[14].properties[1]);

  /// see [User.descripcion]
  static final descripcion =
      QueryStringProperty<User>(_entities[14].properties[2]);

  /// see [User.correo]
  static final correo = QueryStringProperty<User>(_entities[14].properties[3]);

  /// see [User.activo]
  static final activo = QueryBooleanProperty<User>(_entities[14].properties[4]);

  /// see [User.bloqueado]
  static final bloqueado =
      QueryBooleanProperty<User>(_entities[14].properties[5]);

  /// see [User.rolid]
  static final rolid = QueryIntegerProperty<User>(_entities[14].properties[6]);

  /// see [User.token]
  static final token = QueryStringProperty<User>(_entities[14].properties[7]);

  /// see [User.telefono]
  static final telefono =
      QueryStringProperty<User>(_entities[14].properties[8]);

  /// see [User.creado]
  static final creado = QueryStringProperty<User>(_entities[14].properties[9]);

  /// see [User.menuidFav1]
  static final menuidFav1 =
      QueryStringProperty<User>(_entities[14].properties[10]);

  /// see [User.menuidFav2]
  static final menuidFav2 =
      QueryStringProperty<User>(_entities[14].properties[11]);

  /// see [User.menuidFav3]
  static final menuidFav3 =
      QueryStringProperty<User>(_entities[14].properties[12]);
}

/// [Vendor] entity fields to define ObjectBox queries.
class Vendor_ {
  /// see [Vendor.id]
  static final id = QueryIntegerProperty<Vendor>(_entities[15].properties[0]);

  /// see [Vendor.username]
  static final username =
      QueryStringProperty<Vendor>(_entities[15].properties[1]);

  /// see [Vendor.password]
  static final password =
      QueryStringProperty<Vendor>(_entities[15].properties[2]);

  /// see [Vendor.name]
  static final name = QueryStringProperty<Vendor>(_entities[15].properties[3]);

  /// see [Vendor.zone]
  static final zone = QueryStringProperty<Vendor>(_entities[15].properties[4]);
}

/// [Zone] entity fields to define ObjectBox queries.
class Zone_ {
  /// see [Zone.id]
  static final id = QueryIntegerProperty<Zone>(_entities[16].properties[0]);

  /// see [Zone.zonaid]
  static final zonaid = QueryStringProperty<Zone>(_entities[16].properties[1]);

  /// see [Zone.nombre]
  static final nombre = QueryStringProperty<Zone>(_entities[16].properties[2]);

  /// see [Zone.vendedorid]
  static final vendedorid =
      QueryStringProperty<Zone>(_entities[16].properties[3]);

  /// see [Zone.canalid]
  static final canalid = QueryStringProperty<Zone>(_entities[16].properties[4]);

  /// see [Zone.subcanalid]
  static final subcanalid =
      QueryStringProperty<Zone>(_entities[16].properties[5]);

  /// see [Zone.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Zone>(_entities[16].properties[6]);

  /// see [Zone.activo]
  static final activo = QueryBooleanProperty<Zone>(_entities[16].properties[7]);

  /// see [Zone.session]
  static final session =
      QueryRelationToOne<Zone, Session>(_entities[16].properties[8]);
}
