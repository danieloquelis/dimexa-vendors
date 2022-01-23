// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../models/address/address.dart';
import '../../models/client/client.dart';
import '../../models/client_wallet/cient_wallet.dart';
import '../../models/contact/contact.dart';
import '../../models/contact_media/contact_media.dart';
import '../../models/contact_role/contact_role.dart';
import '../../models/dashboard/dashboard.dart';
import '../../models/product/product.dart';
import '../../models/session/session.dart';
import '../../models/sync_manager/sync_manager.dart';
import '../../models/zone/zone.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 3961273361334559951),
      name: 'Address',
      lastPropertyId: const IdUid(14, 4401072120656063985),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3975806348025727531),
            name: 'clientedireccionid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 4448461770563916643),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(1, 6967343937674182105)),
        ModelProperty(
            id: const IdUid(3, 1732853327471129109),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3580449259410332405),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 7884175204582817924),
            name: 'distrito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2774969715567245660),
            name: 'provincia',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 8487791454043237614),
            name: 'departamento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 4517466358287082782),
            name: 'referencia',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5191922358005442093),
            name: 'latitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 8551733679301368610),
            name: 'longitud',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 3922484420835173058),
            name: 'tipoprioridadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 7777532766139055082),
            name: 'tipoprioridad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 3141270956270718269),
            name: 'tipoestablecimientoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 4401072120656063985),
            name: 'tipoestablecimiento',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 5722475246730308399),
      name: 'Client',
      lastPropertyId: const IdUid(38, 1242938591453697834),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1306164695210176346),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7709053699202807860),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(2, 4345383165182157390)),
        ModelProperty(
            id: const IdUid(3, 6948910445228201385),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4174542989319386453),
            name: 'razonsocial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 8660859522031720781),
            name: 'nombrecomercial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6224522457667142425),
            name: 'direccion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3494236900983729033),
            name: 'ubigeoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5149448946013693660),
            name: 'distrito',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5392301943890217360),
            name: 'provincia',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 402946513819800295),
            name: 'departamento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1581005075815730801),
            name: 'estadoclienteid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 7474234251308922548),
            name: 'estadocliente',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 4301063397024667973),
            name: 'estadodiremidid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 7909992777190359252),
            name: 'estadodiremid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 4516777438027891955),
            name: 'sedeid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 4055102310386150898),
            name: 'sede',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 8143522777693450927),
            name: 'zonaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 8554801300000644563),
            name: 'zonaid2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 403056608519500043),
            name: 'zonaid3',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 6432388789140497549),
            name: 'zonaid4',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 6548753306855671436),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(22, 5920368145434076971),
            name: 'vendedor',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(23, 6499615731522782524),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(24, 4807715001613183464),
            name: 'subcanal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(25, 7268659442682528110),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(26, 2844586034499727808),
            name: 'canal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(27, 9131703528924245336),
            name: 'condicionventaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(28, 3006020902942982210),
            name: 'condicionventa',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(29, 6089720750995538854),
            name: 'tipodescuentoid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(30, 168901777636544535),
            name: 'tipodescuento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(31, 8280451805550253325),
            name: 'dia1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(32, 3413895887673776189),
            name: 'dia2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(33, 4971565973360380846),
            name: 'representantelegal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(34, 5327420201943619789),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(35, 6263175804826968577),
            name: 'aniversario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(36, 4055210982000166147),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(37, 3997705751293224757),
            name: 'movil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(38, 1242938591453697834),
            name: 'lastSync',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 6879977876781932143),
      name: 'ClientWallet',
      lastPropertyId: const IdUid(8, 5742565887503929847),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4890654566305961370),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 7517904197006002423),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(3, 7608595057666110381)),
        ModelProperty(
            id: const IdUid(3, 7354494640942414635),
            name: 'zonaid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(4, 7556848487192287475)),
        ModelProperty(
            id: const IdUid(4, 6785678399010390734),
            name: 'lineanormal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 7987620399428801440),
            name: 'lineaespecial',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 9070892540418270982),
            name: 'lineatotal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 53923241143011072),
            name: 'lineadisponible',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5742565887503929847),
            name: 'deuda',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 6644199557318905511),
      name: 'Contact',
      lastPropertyId: const IdUid(21, 7260447202776627095),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6976084704677798983),
            name: 'contactoid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 6409593310531322709),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(5, 1801110002279858099)),
        ModelProperty(
            id: const IdUid(3, 3955132693336774084),
            name: 'ruc',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 554481130337877565),
            name: 'dni',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 2993979391507740155),
            name: 'compaiaid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6677855039865925746),
            name: 'personaid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 4556052454159863177),
            name: 'apellidopaterno',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 6221542450835466547),
            name: 'apellidomaterno',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 1484811676485273428),
            name: 'nombres',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 5284087400732341841),
            name: 'fechanacimiento',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 6311459566024167398),
            name: 'documentoidentidad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 1217027215899613058),
            name: 'tipodocumentoidentidadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1155532863304369756),
            name: 'tipodocumentoidentidad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 1754481820201726631),
            name: 'estadocivilid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 5222520795796224334),
            name: 'estadocivil',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 8278300647500619186),
            name: 'nacionalidadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 8145964952974315231),
            name: 'nacionalidad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 7988173502830333559),
            name: 'generoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 3886733149385030555),
            name: 'genero',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 1181702376447161620),
            name: 'origenid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 7260447202776627095),
            name: 'origen',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 5016369936691882498),
      name: 'ContactMedia',
      lastPropertyId: const IdUid(16, 5863737632772643884),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7862817935759365878),
            name: 'mediocomunicacionid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 304424493536078767),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(6, 5923736518323282468)),
        ModelProperty(
            id: const IdUid(3, 1559388159497535902),
            name: 'personaid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3728454690221861495),
            name: 'contactoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 9074901614238254434),
            name: 'tipomediocomunicacionid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2110105178841616337),
            name: 'tipomediocomunicacion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 6188408247769387785),
            name: 'valor',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3042297469866676358),
            name: 'origenid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 399115827151763041),
            name: 'origen',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 5346131378410449571),
            name: 'tipoprioridadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 3264209393375746125),
            name: 'tipoprioridad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5075862917968967126),
            name: 'ciudadid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 3530740464719983831),
            name: 'ciudad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 7045987494042941377),
            name: 'codigodiscado',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 7837765014068892691),
            name: 'estadoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5863737632772643884),
            name: 'estado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 2830578521724062836),
      name: 'ContactRole',
      lastPropertyId: const IdUid(8, 58873858917936000),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7547960048494049452),
            name: 'rolid',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 7334531383965538750),
            name: 'clienteid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(7, 344297369220156306)),
        ModelProperty(
            id: const IdUid(3, 3650647920277818536),
            name: 'personaid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8324956058393550897),
            name: 'contactoid',
            type: 6,
            flags: 8,
            indexId: const IdUid(8, 3676200119745914349)),
        ModelProperty(
            id: const IdUid(5, 3670764000269626090),
            name: 'tiporolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 2933494053755425280),
            name: 'tiporol',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 8408004915329066121),
            name: 'estadoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 58873858917936000),
            name: 'estado',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(7, 4768978252555915533),
      name: 'Dashboard',
      lastPropertyId: const IdUid(20, 6773642577490669694),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7009904809973135123),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5568417175271967722),
            name: 'zonaid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(9, 1308715615008751249)),
        ModelProperty(
            id: const IdUid(3, 6321786586504152450),
            name: 'clientes',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6917869174306418440),
            name: 'clientesCobertura',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6649363022424000848),
            name: 'morosidad',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 6340492513956817297),
            name: 'cuotaMes',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 5823176631734104709),
            name: 'ventaMes',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3211544177888727777),
            name: 'avanceMes',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 8136697077679798070),
            name: 'ventaMesAnt01',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2619287360303617708),
            name: 'ventaMesAnt02',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 3701925923253526719),
            name: 'ventaMesAnt03',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 3379628753300394777),
            name: 'ventaMesAnt04',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 8431299447102228976),
            name: 'ventaMesAnt05',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 6720846266348879739),
            name: 'ventaMesAnt06',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 1125673191540734772),
            name: 'ventaMesAnt01Tit',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 3912941815944251918),
            name: 'ventaMesAnt02Tit',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 1062528558908879410),
            name: 'ventaMesAnt03Tit',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 645519377790249347),
            name: 'ventaMesAnt04Tit',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 6786950184859230508),
            name: 'ventaMesAnt05Tit',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 6773642577490669694),
            name: 'ventaMesAnt06Tit',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 6103973596358904106),
      name: 'Product',
      lastPropertyId: const IdUid(21, 3151223019615949974),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2356710567134820612),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8385467143191958840),
            name: 'zonaid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(10, 2489986481221197991)),
        ModelProperty(
            id: const IdUid(3, 8622456375940080865),
            name: 'productoid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(11, 4014511003489416785)),
        ModelProperty(
            id: const IdUid(4, 317661598574572852),
            name: 'producto',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6828205870161174710),
            name: 'productoidProv',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 5996732120489588219),
            name: 'unidadmedidaid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 7169468970716493974),
            name: 'unidadmedida',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 3544968826073304558),
            name: 'sublineaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 3866798394273777268),
            name: 'sublinea',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 1371310502417695051),
            name: 'lineaid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1218377322518441553),
            name: 'linea',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 4964593115706899015),
            name: 'bpercepcion',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 8231528886928882227),
            name: 'blote',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 71921105980499854),
            name: 'bpsicotropico',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 8171179314592237185),
            name: 'brefrigerado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 9093363365165168164),
            name: 'stock',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 896698693939634648),
            name: 'lotes',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 3186442747727405613),
            name: 'vencimientocorto',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 2135865027187773928),
            name: 'escalas',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 7077252010149580618),
            name: 'bonificaciones',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 3151223019615949974),
            name: 'lastSync',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(9, 1384688585112657193),
      name: 'Session',
      lastPropertyId: const IdUid(21, 2987841342026270193),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2368606181385024176),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 8763961513604342077),
            name: 'deviceToken',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 8333020221278173327),
            name: 'usuarioid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3903411475140099633),
            name: 'usuario',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 9029042701575401338),
            name: 'descripcion',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 1022548771294595916),
            name: 'correo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 8044218391458587755),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 689128840563902579),
            name: 'bloqueado',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 9019889942612188610),
            name: 'motivobloqueoid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 4261769823696011196),
            name: 'rolid',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 6291881862660434965),
            name: 'token',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 296663912535348056),
            name: 'telefono',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1507256570569340659),
            name: 'creado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 2733952466113128637),
            name: 'actualizado',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 1799600920595784704),
            name: 'menuidFav1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 8503794600512455747),
            name: 'menuidFav2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 300094347528480724),
            name: 'menuidFav3',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(18, 2171300219278508558),
            name: 'motivobloqueo',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(19, 300468055774765773),
            name: 'fechaExpiracion',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 8043684864708034129),
            name: 'zoneIds',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 2987841342026270193),
            name: 'tokenExpiracion',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 8473707462287420020),
      name: 'SyncManager',
      lastPropertyId: const IdUid(5, 10462515033714718),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1783665511504598903),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6270141074276806276),
            name: 'zoneId',
            type: 9,
            flags: 2048,
            indexId: const IdUid(12, 6504767875341458653)),
        ModelProperty(
            id: const IdUid(3, 3676630100169024527),
            name: 'syncType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8372849269203540689),
            name: 'lastSyncDownDate',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 10462515033714718),
            name: 'lastSyncUpDate',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(11, 1930161687257139606),
      name: 'Zone',
      lastPropertyId: const IdUid(13, 1922037939548712395),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4586490794556114308),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3069551880824140665),
            name: 'zonaid',
            type: 9,
            flags: 2048,
            indexId: const IdUid(13, 2932693245424782150)),
        ModelProperty(
            id: const IdUid(3, 5692668946863334118),
            name: 'nombre',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6326137097494826291),
            name: 'vendedorid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6076254033189082964),
            name: 'vendedor',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3546079874322437388),
            name: 'canalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 3411764463206216634),
            name: 'canal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 4160708008939508073),
            name: 'subcanalid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 8809211883699055277),
            name: 'subcanal',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 509337576021807607),
            name: 'unidadnegocioid',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 4915363531078799191),
            name: 'unidadnegocio',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 8982174564741396241),
            name: 'activo',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1922037939548712395),
            name: 'especial',
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
      lastEntityId: const IdUid(11, 1930161687257139606),
      lastIndexId: const IdUid(13, 2932693245424782150),
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
          final direccionOffset = object.direccion == null
              ? null
              : fbb.writeString(object.direccion!);
          final ubigeoidOffset = object.ubigeoid == null
              ? null
              : fbb.writeString(object.ubigeoid!);
          final distritoOffset = object.distrito == null
              ? null
              : fbb.writeString(object.distrito!);
          final provinciaOffset = object.provincia == null
              ? null
              : fbb.writeString(object.provincia!);
          final departamentoOffset = object.departamento == null
              ? null
              : fbb.writeString(object.departamento!);
          final referenciaOffset = object.referencia == null
              ? null
              : fbb.writeString(object.referencia!);
          final latitudOffset =
              object.latitud == null ? null : fbb.writeString(object.latitud!);
          final longitudOffset = object.longitud == null
              ? null
              : fbb.writeString(object.longitud!);
          final tipoprioridadOffset = object.tipoprioridad == null
              ? null
              : fbb.writeString(object.tipoprioridad!);
          final tipoestablecimientoOffset = object.tipoestablecimiento == null
              ? null
              : fbb.writeString(object.tipoestablecimiento!);
          fbb.startTable(15);
          fbb.addInt64(0, object.clientedireccionid ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, direccionOffset);
          fbb.addOffset(3, ubigeoidOffset);
          fbb.addOffset(4, distritoOffset);
          fbb.addOffset(5, provinciaOffset);
          fbb.addOffset(6, departamentoOffset);
          fbb.addOffset(7, referenciaOffset);
          fbb.addOffset(8, latitudOffset);
          fbb.addOffset(9, longitudOffset);
          fbb.addInt64(10, object.tipoprioridadid);
          fbb.addOffset(11, tipoprioridadOffset);
          fbb.addInt64(12, object.tipoestablecimientoid);
          fbb.addOffset(13, tipoestablecimientoOffset);
          fbb.finish(fbb.endTable());
          return object.clientedireccionid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Address(
              clientedireccionid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              direccion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              ubigeoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              distrito: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              provincia: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              departamento: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              referencia: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              latitud: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              longitud: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              tipoprioridadid:
                  const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 24),
              tipoprioridad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              tipoestablecimientoid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 28),
              tipoestablecimiento: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30));

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
          final rucOffset =
              object.ruc == null ? null : fbb.writeString(object.ruc!);
          final razonsocialOffset = object.razonsocial == null
              ? null
              : fbb.writeString(object.razonsocial!);
          final nombrecomercialOffset = object.nombrecomercial == null
              ? null
              : fbb.writeString(object.nombrecomercial!);
          final direccionOffset = object.direccion == null
              ? null
              : fbb.writeString(object.direccion!);
          final ubigeoidOffset = object.ubigeoid == null
              ? null
              : fbb.writeString(object.ubigeoid!);
          final distritoOffset = object.distrito == null
              ? null
              : fbb.writeString(object.distrito!);
          final provinciaOffset = object.provincia == null
              ? null
              : fbb.writeString(object.provincia!);
          final departamentoOffset = object.departamento == null
              ? null
              : fbb.writeString(object.departamento!);
          final estadoclienteidOffset = object.estadoclienteid == null
              ? null
              : fbb.writeString(object.estadoclienteid!);
          final estadoclienteOffset = object.estadocliente == null
              ? null
              : fbb.writeString(object.estadocliente!);
          final estadodiremididOffset = object.estadodiremidid == null
              ? null
              : fbb.writeString(object.estadodiremidid!);
          final estadodiremidOffset = object.estadodiremid == null
              ? null
              : fbb.writeString(object.estadodiremid!);
          final sedeidOffset =
              object.sedeid == null ? null : fbb.writeString(object.sedeid!);
          final sedeOffset =
              object.sede == null ? null : fbb.writeString(object.sede!);
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final zonaid2Offset =
              object.zonaid2 == null ? null : fbb.writeString(object.zonaid2!);
          final zonaid3Offset =
              object.zonaid3 == null ? null : fbb.writeString(object.zonaid3!);
          final zonaid4Offset =
              object.zonaid4 == null ? null : fbb.writeString(object.zonaid4!);
          final vendedoridOffset = object.vendedorid == null
              ? null
              : fbb.writeString(object.vendedorid!);
          final vendedorOffset = object.vendedor == null
              ? null
              : fbb.writeString(object.vendedor!);
          final subcanalidOffset = object.subcanalid == null
              ? null
              : fbb.writeString(object.subcanalid!);
          final subcanalOffset = object.subcanal == null
              ? null
              : fbb.writeString(object.subcanal!);
          final canalidOffset =
              object.canalid == null ? null : fbb.writeString(object.canalid!);
          final canalOffset =
              object.canal == null ? null : fbb.writeString(object.canal!);
          final condicionventaidOffset = object.condicionventaid == null
              ? null
              : fbb.writeString(object.condicionventaid!);
          final condicionventaOffset = object.condicionventa == null
              ? null
              : fbb.writeString(object.condicionventa!);
          final tipodescuentoidOffset = object.tipodescuentoid == null
              ? null
              : fbb.writeString(object.tipodescuentoid!);
          final tipodescuentoOffset = object.tipodescuento == null
              ? null
              : fbb.writeString(object.tipodescuento!);
          final dia1Offset =
              object.dia1 == null ? null : fbb.writeString(object.dia1!);
          final dia2Offset =
              object.dia2 == null ? null : fbb.writeString(object.dia2!);
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
          fbb.startTable(39);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, rucOffset);
          fbb.addOffset(3, razonsocialOffset);
          fbb.addOffset(4, nombrecomercialOffset);
          fbb.addOffset(5, direccionOffset);
          fbb.addOffset(6, ubigeoidOffset);
          fbb.addOffset(7, distritoOffset);
          fbb.addOffset(8, provinciaOffset);
          fbb.addOffset(9, departamentoOffset);
          fbb.addOffset(10, estadoclienteidOffset);
          fbb.addOffset(11, estadoclienteOffset);
          fbb.addOffset(12, estadodiremididOffset);
          fbb.addOffset(13, estadodiremidOffset);
          fbb.addOffset(14, sedeidOffset);
          fbb.addOffset(15, sedeOffset);
          fbb.addOffset(16, zonaidOffset);
          fbb.addOffset(17, zonaid2Offset);
          fbb.addOffset(18, zonaid3Offset);
          fbb.addOffset(19, zonaid4Offset);
          fbb.addOffset(20, vendedoridOffset);
          fbb.addOffset(21, vendedorOffset);
          fbb.addOffset(22, subcanalidOffset);
          fbb.addOffset(23, subcanalOffset);
          fbb.addOffset(24, canalidOffset);
          fbb.addOffset(25, canalOffset);
          fbb.addOffset(26, condicionventaidOffset);
          fbb.addOffset(27, condicionventaOffset);
          fbb.addOffset(28, tipodescuentoidOffset);
          fbb.addOffset(29, tipodescuentoOffset);
          fbb.addOffset(30, dia1Offset);
          fbb.addOffset(31, dia2Offset);
          fbb.addOffset(32, representantelegalOffset);
          fbb.addOffset(33, dniOffset);
          fbb.addOffset(34, aniversarioOffset);
          fbb.addOffset(35, telefonoOffset);
          fbb.addOffset(36, movilOffset);
          fbb.addInt64(37, object.lastSync?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final lastSyncValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 78);
          final object = Client(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              ruc: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              razonsocial: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              nombrecomercial: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              direccion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              ubigeoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              distrito: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              provincia: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              departamento: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              estadoclienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              estadocliente: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              estadodiremidid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              estadodiremid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              sedeid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              sede: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34),
              zonaid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              zonaid2: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 38),
              zonaid3: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 40),
              zonaid4: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 42),
              vendedorid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 44),
              vendedor: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 46),
              subcanalid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 48),
              subcanal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 50),
              canalid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 52),
              canal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 54),
              condicionventaid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 56),
              condicionventa: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 58),
              tipodescuentoid: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 60),
              tipodescuento: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 62),
              dia1: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 64),
              dia2: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 66),
              representantelegal: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 68),
              dni: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 70),
              aniversario: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 72),
              telefono: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 74),
              movil: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 76),
              lastSync: lastSyncValue == null ? null : DateTime.fromMillisecondsSinceEpoch(lastSyncValue));

          return object;
        }),
    ClientWallet: EntityDefinition<ClientWallet>(
        model: _entities[2],
        toOneRelations: (ClientWallet object) => [],
        toManyRelations: (ClientWallet object) => {},
        getId: (ClientWallet object) => object.id,
        setId: (ClientWallet object, int id) {
          object.id = id;
        },
        objectToFB: (ClientWallet object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final lineanormalOffset = object.lineanormal == null
              ? null
              : fbb.writeString(object.lineanormal!);
          final lineaespecialOffset = object.lineaespecial == null
              ? null
              : fbb.writeString(object.lineaespecial!);
          final lineatotalOffset = object.lineatotal == null
              ? null
              : fbb.writeString(object.lineatotal!);
          final lineadisponibleOffset = object.lineadisponible == null
              ? null
              : fbb.writeString(object.lineadisponible!);
          final deudaOffset =
              object.deuda == null ? null : fbb.writeString(object.deuda!);
          fbb.startTable(9);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, zonaidOffset);
          fbb.addOffset(3, lineanormalOffset);
          fbb.addOffset(4, lineaespecialOffset);
          fbb.addOffset(5, lineatotalOffset);
          fbb.addOffset(6, lineadisponibleOffset);
          fbb.addOffset(7, deudaOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ClientWallet(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              lineanormal: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              lineaespecial: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              lineatotal: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              lineadisponible: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              deuda: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18));

          return object;
        }),
    Contact: EntityDefinition<Contact>(
        model: _entities[3],
        toOneRelations: (Contact object) => [],
        toManyRelations: (Contact object) => {},
        getId: (Contact object) => object.contactoid,
        setId: (Contact object, int id) {
          object.contactoid = id;
        },
        objectToFB: (Contact object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final rucOffset =
              object.ruc == null ? null : fbb.writeString(object.ruc!);
          final dniOffset =
              object.dni == null ? null : fbb.writeString(object.dni!);
          final apellidopaternoOffset = object.apellidopaterno == null
              ? null
              : fbb.writeString(object.apellidopaterno!);
          final apellidomaternoOffset = object.apellidomaterno == null
              ? null
              : fbb.writeString(object.apellidomaterno!);
          final nombresOffset =
              object.nombres == null ? null : fbb.writeString(object.nombres!);
          final fechanacimientoOffset = object.fechanacimiento == null
              ? null
              : fbb.writeString(object.fechanacimiento!);
          final documentoidentidadOffset = object.documentoidentidad == null
              ? null
              : fbb.writeString(object.documentoidentidad!);
          final tipodocumentoidentidadOffset =
              object.tipodocumentoidentidad == null
                  ? null
                  : fbb.writeString(object.tipodocumentoidentidad!);
          final estadocivilOffset = object.estadocivil == null
              ? null
              : fbb.writeString(object.estadocivil!);
          final nacionalidadOffset = object.nacionalidad == null
              ? null
              : fbb.writeString(object.nacionalidad!);
          final generoOffset =
              object.genero == null ? null : fbb.writeString(object.genero!);
          final origenOffset =
              object.origen == null ? null : fbb.writeString(object.origen!);
          fbb.startTable(22);
          fbb.addInt64(0, object.contactoid ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addOffset(2, rucOffset);
          fbb.addOffset(3, dniOffset);
          fbb.addInt64(4, object.compaiaid);
          fbb.addInt64(5, object.personaid);
          fbb.addOffset(6, apellidopaternoOffset);
          fbb.addOffset(7, apellidomaternoOffset);
          fbb.addOffset(8, nombresOffset);
          fbb.addOffset(9, fechanacimientoOffset);
          fbb.addOffset(10, documentoidentidadOffset);
          fbb.addInt64(11, object.tipodocumentoidentidadid);
          fbb.addOffset(12, tipodocumentoidentidadOffset);
          fbb.addInt64(13, object.estadocivilid);
          fbb.addOffset(14, estadocivilOffset);
          fbb.addInt64(15, object.nacionalidadid);
          fbb.addOffset(16, nacionalidadOffset);
          fbb.addInt64(17, object.generoid);
          fbb.addOffset(18, generoOffset);
          fbb.addInt64(19, object.origenid);
          fbb.addOffset(20, origenOffset);
          fbb.finish(fbb.endTable());
          return object.contactoid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Contact(
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              ruc: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              dni: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              compaiaid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              contactoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              personaid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              apellidopaterno: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              apellidomaterno: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              nombres: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              fechanacimiento: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              documentoidentidad: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              tipodocumentoidentidadid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 26),
              tipodocumentoidentidad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              estadocivilid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 30),
              estadocivil: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              nacionalidadid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 34),
              nacionalidad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              generoid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 38),
              genero: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 40),
              origenid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 42),
              origen: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 44));

          return object;
        }),
    ContactMedia: EntityDefinition<ContactMedia>(
        model: _entities[4],
        toOneRelations: (ContactMedia object) => [],
        toManyRelations: (ContactMedia object) => {},
        getId: (ContactMedia object) => object.mediocomunicacionid,
        setId: (ContactMedia object, int id) {
          object.mediocomunicacionid = id;
        },
        objectToFB: (ContactMedia object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final tipomediocomunicacionOffset =
              object.tipomediocomunicacion == null
                  ? null
                  : fbb.writeString(object.tipomediocomunicacion!);
          final valorOffset =
              object.valor == null ? null : fbb.writeString(object.valor!);
          final origenOffset =
              object.origen == null ? null : fbb.writeString(object.origen!);
          final tipoprioridadOffset = object.tipoprioridad == null
              ? null
              : fbb.writeString(object.tipoprioridad!);
          final ciudadOffset =
              object.ciudad == null ? null : fbb.writeString(object.ciudad!);
          final codigodiscadoOffset = object.codigodiscado == null
              ? null
              : fbb.writeString(object.codigodiscado!);
          final estadoOffset =
              object.estado == null ? null : fbb.writeString(object.estado!);
          fbb.startTable(17);
          fbb.addInt64(0, object.mediocomunicacionid ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addInt64(2, object.personaid);
          fbb.addInt64(3, object.contactoid);
          fbb.addInt64(4, object.tipomediocomunicacionid);
          fbb.addOffset(5, tipomediocomunicacionOffset);
          fbb.addOffset(6, valorOffset);
          fbb.addInt64(7, object.origenid);
          fbb.addOffset(8, origenOffset);
          fbb.addInt64(9, object.tipoprioridadid);
          fbb.addOffset(10, tipoprioridadOffset);
          fbb.addInt64(11, object.ciudadid);
          fbb.addOffset(12, ciudadOffset);
          fbb.addOffset(13, codigodiscadoOffset);
          fbb.addInt64(14, object.estadoid);
          fbb.addOffset(15, estadoOffset);
          fbb.finish(fbb.endTable());
          return object.mediocomunicacionid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ContactMedia(
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              personaid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              contactoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              mediocomunicacionid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              tipomediocomunicacionid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              tipomediocomunicacion: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              valor: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              origenid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              origen: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              tipoprioridadid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              tipoprioridad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 24),
              ciudadid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 26),
              ciudad: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              codigodiscado: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              estadoid: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 32),
              estado: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34));

          return object;
        }),
    ContactRole: EntityDefinition<ContactRole>(
        model: _entities[5],
        toOneRelations: (ContactRole object) => [],
        toManyRelations: (ContactRole object) => {},
        getId: (ContactRole object) => object.rolid,
        setId: (ContactRole object, int id) {
          object.rolid = id;
        },
        objectToFB: (ContactRole object, fb.Builder fbb) {
          final clienteidOffset = object.clienteid == null
              ? null
              : fbb.writeString(object.clienteid!);
          final tiporolOffset =
              object.tiporol == null ? null : fbb.writeString(object.tiporol!);
          final estadoOffset =
              object.estado == null ? null : fbb.writeString(object.estado!);
          fbb.startTable(9);
          fbb.addInt64(0, object.rolid ?? 0);
          fbb.addOffset(1, clienteidOffset);
          fbb.addInt64(2, object.personaid);
          fbb.addInt64(3, object.contactoid);
          fbb.addInt64(4, object.tiporolid);
          fbb.addOffset(5, tiporolOffset);
          fbb.addInt64(6, object.estadoid);
          fbb.addOffset(7, estadoOffset);
          fbb.finish(fbb.endTable());
          return object.rolid ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = ContactRole(
              clienteid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              personaid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              contactoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              rolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              tiporolid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              tiporol: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              estadoid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              estado: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18));

          return object;
        }),
    Dashboard: EntityDefinition<Dashboard>(
        model: _entities[6],
        toOneRelations: (Dashboard object) => [],
        toManyRelations: (Dashboard object) => {},
        getId: (Dashboard object) => object.id,
        setId: (Dashboard object, int id) {
          object.id = id;
        },
        objectToFB: (Dashboard object, fb.Builder fbb) {
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final morosidadOffset = object.morosidad == null
              ? null
              : fbb.writeString(object.morosidad!);
          final cuotaMesOffset = object.cuotaMes == null
              ? null
              : fbb.writeString(object.cuotaMes!);
          final ventaMesOffset = object.ventaMes == null
              ? null
              : fbb.writeString(object.ventaMes!);
          final avanceMesOffset = object.avanceMes == null
              ? null
              : fbb.writeString(object.avanceMes!);
          final ventaMesAnt01Offset = object.ventaMesAnt01 == null
              ? null
              : fbb.writeString(object.ventaMesAnt01!);
          final ventaMesAnt02Offset = object.ventaMesAnt02 == null
              ? null
              : fbb.writeString(object.ventaMesAnt02!);
          final ventaMesAnt03Offset = object.ventaMesAnt03 == null
              ? null
              : fbb.writeString(object.ventaMesAnt03!);
          final ventaMesAnt04Offset = object.ventaMesAnt04 == null
              ? null
              : fbb.writeString(object.ventaMesAnt04!);
          final ventaMesAnt05Offset = object.ventaMesAnt05 == null
              ? null
              : fbb.writeString(object.ventaMesAnt05!);
          final ventaMesAnt06Offset = object.ventaMesAnt06 == null
              ? null
              : fbb.writeString(object.ventaMesAnt06!);
          final ventaMesAnt01TitOffset = object.ventaMesAnt01Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt01Tit!);
          final ventaMesAnt02TitOffset = object.ventaMesAnt02Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt02Tit!);
          final ventaMesAnt03TitOffset = object.ventaMesAnt03Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt03Tit!);
          final ventaMesAnt04TitOffset = object.ventaMesAnt04Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt04Tit!);
          final ventaMesAnt05TitOffset = object.ventaMesAnt05Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt05Tit!);
          final ventaMesAnt06TitOffset = object.ventaMesAnt06Tit == null
              ? null
              : fbb.writeString(object.ventaMesAnt06Tit!);
          fbb.startTable(21);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, zonaidOffset);
          fbb.addInt64(2, object.clientes);
          fbb.addInt64(3, object.clientesCobertura);
          fbb.addOffset(4, morosidadOffset);
          fbb.addOffset(5, cuotaMesOffset);
          fbb.addOffset(6, ventaMesOffset);
          fbb.addOffset(7, avanceMesOffset);
          fbb.addOffset(8, ventaMesAnt01Offset);
          fbb.addOffset(9, ventaMesAnt02Offset);
          fbb.addOffset(10, ventaMesAnt03Offset);
          fbb.addOffset(11, ventaMesAnt04Offset);
          fbb.addOffset(12, ventaMesAnt05Offset);
          fbb.addOffset(13, ventaMesAnt06Offset);
          fbb.addOffset(14, ventaMesAnt01TitOffset);
          fbb.addOffset(15, ventaMesAnt02TitOffset);
          fbb.addOffset(16, ventaMesAnt03TitOffset);
          fbb.addOffset(17, ventaMesAnt04TitOffset);
          fbb.addOffset(18, ventaMesAnt05TitOffset);
          fbb.addOffset(19, ventaMesAnt06TitOffset);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Dashboard(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              clientes: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              clientesCobertura: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              morosidad: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              cuotaMes: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              ventaMes: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              avanceMes: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              ventaMesAnt01: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              ventaMesAnt02: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              ventaMesAnt03: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              ventaMesAnt04: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 26),
              ventaMesAnt05: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 28),
              ventaMesAnt06: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 30),
              ventaMesAnt01Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 32),
              ventaMesAnt02Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 34),
              ventaMesAnt03Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 36),
              ventaMesAnt04Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 38),
              ventaMesAnt05Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 40),
              ventaMesAnt06Tit: const fb.StringReader().vTableGetNullable(buffer, rootOffset, 42));

          return object;
        }),
    Product: EntityDefinition<Product>(
        model: _entities[7],
        toOneRelations: (Product object) => [],
        toManyRelations: (Product object) => {},
        getId: (Product object) => object.id,
        setId: (Product object, int id) {
          object.id = id;
        },
        objectToFB: (Product object, fb.Builder fbb) {
          final zonaidOffset =
              object.zonaid == null ? null : fbb.writeString(object.zonaid!);
          final productoidOffset = object.productoid == null
              ? null
              : fbb.writeString(object.productoid!);
          final productoOffset = object.producto == null
              ? null
              : fbb.writeString(object.producto!);
          final productoidProvOffset = object.productoidProv == null
              ? null
              : fbb.writeString(object.productoidProv!);
          final unidadmedidaOffset = object.unidadmedida == null
              ? null
              : fbb.writeString(object.unidadmedida!);
          final sublineaidOffset = object.sublineaid == null
              ? null
              : fbb.writeString(object.sublineaid!);
          final sublineaOffset = object.sublinea == null
              ? null
              : fbb.writeString(object.sublinea!);
          final lineaidOffset =
              object.lineaid == null ? null : fbb.writeString(object.lineaid!);
          final lineaOffset =
              object.linea == null ? null : fbb.writeString(object.linea!);
          fbb.startTable(22);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, zonaidOffset);
          fbb.addOffset(2, productoidOffset);
          fbb.addOffset(3, productoOffset);
          fbb.addOffset(4, productoidProvOffset);
          fbb.addInt64(5, object.unidadmedidaid);
          fbb.addOffset(6, unidadmedidaOffset);
          fbb.addOffset(7, sublineaidOffset);
          fbb.addOffset(8, sublineaOffset);
          fbb.addOffset(9, lineaidOffset);
          fbb.addOffset(10, lineaOffset);
          fbb.addBool(11, object.bpercepcion);
          fbb.addBool(12, object.blote);
          fbb.addBool(13, object.bpsicotropico);
          fbb.addBool(14, object.brefrigerado);
          fbb.addInt64(15, object.stock);
          fbb.addInt64(16, object.lotes);
          fbb.addBool(17, object.vencimientocorto);
          fbb.addInt64(18, object.escalas);
          fbb.addInt64(19, object.bonificaciones);
          fbb.addInt64(20, object.lastSync?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final lastSyncValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 44);
          final object = Product(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              productoid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              producto: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              productoidProv: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              unidadmedidaid: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              unidadmedida: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              sublineaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              sublinea: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              lineaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              linea: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              bpercepcion: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 26),
              blote: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 28),
              bpsicotropico: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 30),
              brefrigerado: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 32),
              stock: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 34),
              lotes: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 36),
              vencimientocorto: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 38),
              escalas: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 40),
              bonificaciones: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 42),
              lastSync: lastSyncValue == null ? null : DateTime.fromMillisecondsSinceEpoch(lastSyncValue));

          return object;
        }),
    Session: EntityDefinition<Session>(
        model: _entities[8],
        toOneRelations: (Session object) => [],
        toManyRelations: (Session object) => {},
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
          final zoneIdsOffset =
              object.zoneIds == null ? null : fbb.writeString(object.zoneIds!);
          fbb.startTable(22);
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
          fbb.addOffset(19, zoneIdsOffset);
          fbb.addInt64(20, object.tokenExpiracion);
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
              tokenExpiracion: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 44))
            ..zoneIds = const fb.StringReader().vTableGetNullable(buffer, rootOffset, 42);

          return object;
        }),
    SyncManager: EntityDefinition<SyncManager>(
        model: _entities[9],
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
    Zone: EntityDefinition<Zone>(
        model: _entities[10],
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
          final vendedorOffset = object.vendedor == null
              ? null
              : fbb.writeString(object.vendedor!);
          final canalidOffset =
              object.canalid == null ? null : fbb.writeString(object.canalid!);
          final canalOffset =
              object.canal == null ? null : fbb.writeString(object.canal!);
          final subcanalidOffset = object.subcanalid == null
              ? null
              : fbb.writeString(object.subcanalid!);
          final subcanalOffset = object.subcanal == null
              ? null
              : fbb.writeString(object.subcanal!);
          final unidadnegocioidOffset = object.unidadnegocioid == null
              ? null
              : fbb.writeString(object.unidadnegocioid!);
          final unidadnegocioOffset = object.unidadnegocio == null
              ? null
              : fbb.writeString(object.unidadnegocio!);
          fbb.startTable(14);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, zonaidOffset);
          fbb.addOffset(2, nombreOffset);
          fbb.addOffset(3, vendedoridOffset);
          fbb.addOffset(4, vendedorOffset);
          fbb.addOffset(5, canalidOffset);
          fbb.addOffset(6, canalOffset);
          fbb.addOffset(7, subcanalidOffset);
          fbb.addOffset(8, subcanalOffset);
          fbb.addOffset(9, unidadnegocioidOffset);
          fbb.addOffset(10, unidadnegocioOffset);
          fbb.addBool(11, object.activo);
          fbb.addBool(12, object.especial);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Zone(
              zonaid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              nombre: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              vendedorid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              vendedor: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              canalid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              canal: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              subcanalid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              subcanal: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              unidadnegocioid: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              unidadnegocio: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              activo: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 26),
              especial:
                  const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 28))
            ..id = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

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

  /// see [Address.direccion]
  static final direccion =
      QueryStringProperty<Address>(_entities[0].properties[2]);

  /// see [Address.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Address>(_entities[0].properties[3]);

  /// see [Address.distrito]
  static final distrito =
      QueryStringProperty<Address>(_entities[0].properties[4]);

  /// see [Address.provincia]
  static final provincia =
      QueryStringProperty<Address>(_entities[0].properties[5]);

  /// see [Address.departamento]
  static final departamento =
      QueryStringProperty<Address>(_entities[0].properties[6]);

  /// see [Address.referencia]
  static final referencia =
      QueryStringProperty<Address>(_entities[0].properties[7]);

  /// see [Address.latitud]
  static final latitud =
      QueryStringProperty<Address>(_entities[0].properties[8]);

  /// see [Address.longitud]
  static final longitud =
      QueryStringProperty<Address>(_entities[0].properties[9]);

  /// see [Address.tipoprioridadid]
  static final tipoprioridadid =
      QueryIntegerProperty<Address>(_entities[0].properties[10]);

  /// see [Address.tipoprioridad]
  static final tipoprioridad =
      QueryStringProperty<Address>(_entities[0].properties[11]);

  /// see [Address.tipoestablecimientoid]
  static final tipoestablecimientoid =
      QueryIntegerProperty<Address>(_entities[0].properties[12]);

  /// see [Address.tipoestablecimiento]
  static final tipoestablecimiento =
      QueryStringProperty<Address>(_entities[0].properties[13]);
}

/// [Client] entity fields to define ObjectBox queries.
class Client_ {
  /// see [Client.id]
  static final id = QueryIntegerProperty<Client>(_entities[1].properties[0]);

  /// see [Client.clienteid]
  static final clienteid =
      QueryStringProperty<Client>(_entities[1].properties[1]);

  /// see [Client.ruc]
  static final ruc = QueryStringProperty<Client>(_entities[1].properties[2]);

  /// see [Client.razonsocial]
  static final razonsocial =
      QueryStringProperty<Client>(_entities[1].properties[3]);

  /// see [Client.nombrecomercial]
  static final nombrecomercial =
      QueryStringProperty<Client>(_entities[1].properties[4]);

  /// see [Client.direccion]
  static final direccion =
      QueryStringProperty<Client>(_entities[1].properties[5]);

  /// see [Client.ubigeoid]
  static final ubigeoid =
      QueryStringProperty<Client>(_entities[1].properties[6]);

  /// see [Client.distrito]
  static final distrito =
      QueryStringProperty<Client>(_entities[1].properties[7]);

  /// see [Client.provincia]
  static final provincia =
      QueryStringProperty<Client>(_entities[1].properties[8]);

  /// see [Client.departamento]
  static final departamento =
      QueryStringProperty<Client>(_entities[1].properties[9]);

  /// see [Client.estadoclienteid]
  static final estadoclienteid =
      QueryStringProperty<Client>(_entities[1].properties[10]);

  /// see [Client.estadocliente]
  static final estadocliente =
      QueryStringProperty<Client>(_entities[1].properties[11]);

  /// see [Client.estadodiremidid]
  static final estadodiremidid =
      QueryStringProperty<Client>(_entities[1].properties[12]);

  /// see [Client.estadodiremid]
  static final estadodiremid =
      QueryStringProperty<Client>(_entities[1].properties[13]);

  /// see [Client.sedeid]
  static final sedeid =
      QueryStringProperty<Client>(_entities[1].properties[14]);

  /// see [Client.sede]
  static final sede = QueryStringProperty<Client>(_entities[1].properties[15]);

  /// see [Client.zonaid]
  static final zonaid =
      QueryStringProperty<Client>(_entities[1].properties[16]);

  /// see [Client.zonaid2]
  static final zonaid2 =
      QueryStringProperty<Client>(_entities[1].properties[17]);

  /// see [Client.zonaid3]
  static final zonaid3 =
      QueryStringProperty<Client>(_entities[1].properties[18]);

  /// see [Client.zonaid4]
  static final zonaid4 =
      QueryStringProperty<Client>(_entities[1].properties[19]);

  /// see [Client.vendedorid]
  static final vendedorid =
      QueryStringProperty<Client>(_entities[1].properties[20]);

  /// see [Client.vendedor]
  static final vendedor =
      QueryStringProperty<Client>(_entities[1].properties[21]);

  /// see [Client.subcanalid]
  static final subcanalid =
      QueryStringProperty<Client>(_entities[1].properties[22]);

  /// see [Client.subcanal]
  static final subcanal =
      QueryStringProperty<Client>(_entities[1].properties[23]);

  /// see [Client.canalid]
  static final canalid =
      QueryStringProperty<Client>(_entities[1].properties[24]);

  /// see [Client.canal]
  static final canal = QueryStringProperty<Client>(_entities[1].properties[25]);

  /// see [Client.condicionventaid]
  static final condicionventaid =
      QueryStringProperty<Client>(_entities[1].properties[26]);

  /// see [Client.condicionventa]
  static final condicionventa =
      QueryStringProperty<Client>(_entities[1].properties[27]);

  /// see [Client.tipodescuentoid]
  static final tipodescuentoid =
      QueryStringProperty<Client>(_entities[1].properties[28]);

  /// see [Client.tipodescuento]
  static final tipodescuento =
      QueryStringProperty<Client>(_entities[1].properties[29]);

  /// see [Client.dia1]
  static final dia1 = QueryStringProperty<Client>(_entities[1].properties[30]);

  /// see [Client.dia2]
  static final dia2 = QueryStringProperty<Client>(_entities[1].properties[31]);

  /// see [Client.representantelegal]
  static final representantelegal =
      QueryStringProperty<Client>(_entities[1].properties[32]);

  /// see [Client.dni]
  static final dni = QueryStringProperty<Client>(_entities[1].properties[33]);

  /// see [Client.aniversario]
  static final aniversario =
      QueryStringProperty<Client>(_entities[1].properties[34]);

  /// see [Client.telefono]
  static final telefono =
      QueryStringProperty<Client>(_entities[1].properties[35]);

  /// see [Client.movil]
  static final movil = QueryStringProperty<Client>(_entities[1].properties[36]);

  /// see [Client.lastSync]
  static final lastSync =
      QueryIntegerProperty<Client>(_entities[1].properties[37]);
}

/// [ClientWallet] entity fields to define ObjectBox queries.
class ClientWallet_ {
  /// see [ClientWallet.id]
  static final id =
      QueryIntegerProperty<ClientWallet>(_entities[2].properties[0]);

  /// see [ClientWallet.clienteid]
  static final clienteid =
      QueryStringProperty<ClientWallet>(_entities[2].properties[1]);

  /// see [ClientWallet.zonaid]
  static final zonaid =
      QueryStringProperty<ClientWallet>(_entities[2].properties[2]);

  /// see [ClientWallet.lineanormal]
  static final lineanormal =
      QueryStringProperty<ClientWallet>(_entities[2].properties[3]);

  /// see [ClientWallet.lineaespecial]
  static final lineaespecial =
      QueryStringProperty<ClientWallet>(_entities[2].properties[4]);

  /// see [ClientWallet.lineatotal]
  static final lineatotal =
      QueryStringProperty<ClientWallet>(_entities[2].properties[5]);

  /// see [ClientWallet.lineadisponible]
  static final lineadisponible =
      QueryStringProperty<ClientWallet>(_entities[2].properties[6]);

  /// see [ClientWallet.deuda]
  static final deuda =
      QueryStringProperty<ClientWallet>(_entities[2].properties[7]);
}

/// [Contact] entity fields to define ObjectBox queries.
class Contact_ {
  /// see [Contact.contactoid]
  static final contactoid =
      QueryIntegerProperty<Contact>(_entities[3].properties[0]);

  /// see [Contact.clienteid]
  static final clienteid =
      QueryStringProperty<Contact>(_entities[3].properties[1]);

  /// see [Contact.ruc]
  static final ruc = QueryStringProperty<Contact>(_entities[3].properties[2]);

  /// see [Contact.dni]
  static final dni = QueryStringProperty<Contact>(_entities[3].properties[3]);

  /// see [Contact.compaiaid]
  static final compaiaid =
      QueryIntegerProperty<Contact>(_entities[3].properties[4]);

  /// see [Contact.personaid]
  static final personaid =
      QueryIntegerProperty<Contact>(_entities[3].properties[5]);

  /// see [Contact.apellidopaterno]
  static final apellidopaterno =
      QueryStringProperty<Contact>(_entities[3].properties[6]);

  /// see [Contact.apellidomaterno]
  static final apellidomaterno =
      QueryStringProperty<Contact>(_entities[3].properties[7]);

  /// see [Contact.nombres]
  static final nombres =
      QueryStringProperty<Contact>(_entities[3].properties[8]);

  /// see [Contact.fechanacimiento]
  static final fechanacimiento =
      QueryStringProperty<Contact>(_entities[3].properties[9]);

  /// see [Contact.documentoidentidad]
  static final documentoidentidad =
      QueryStringProperty<Contact>(_entities[3].properties[10]);

  /// see [Contact.tipodocumentoidentidadid]
  static final tipodocumentoidentidadid =
      QueryIntegerProperty<Contact>(_entities[3].properties[11]);

  /// see [Contact.tipodocumentoidentidad]
  static final tipodocumentoidentidad =
      QueryStringProperty<Contact>(_entities[3].properties[12]);

  /// see [Contact.estadocivilid]
  static final estadocivilid =
      QueryIntegerProperty<Contact>(_entities[3].properties[13]);

  /// see [Contact.estadocivil]
  static final estadocivil =
      QueryStringProperty<Contact>(_entities[3].properties[14]);

  /// see [Contact.nacionalidadid]
  static final nacionalidadid =
      QueryIntegerProperty<Contact>(_entities[3].properties[15]);

  /// see [Contact.nacionalidad]
  static final nacionalidad =
      QueryStringProperty<Contact>(_entities[3].properties[16]);

  /// see [Contact.generoid]
  static final generoid =
      QueryIntegerProperty<Contact>(_entities[3].properties[17]);

  /// see [Contact.genero]
  static final genero =
      QueryStringProperty<Contact>(_entities[3].properties[18]);

  /// see [Contact.origenid]
  static final origenid =
      QueryIntegerProperty<Contact>(_entities[3].properties[19]);

  /// see [Contact.origen]
  static final origen =
      QueryStringProperty<Contact>(_entities[3].properties[20]);
}

/// [ContactMedia] entity fields to define ObjectBox queries.
class ContactMedia_ {
  /// see [ContactMedia.mediocomunicacionid]
  static final mediocomunicacionid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[0]);

  /// see [ContactMedia.clienteid]
  static final clienteid =
      QueryStringProperty<ContactMedia>(_entities[4].properties[1]);

  /// see [ContactMedia.personaid]
  static final personaid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[2]);

  /// see [ContactMedia.contactoid]
  static final contactoid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[3]);

  /// see [ContactMedia.tipomediocomunicacionid]
  static final tipomediocomunicacionid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[4]);

  /// see [ContactMedia.tipomediocomunicacion]
  static final tipomediocomunicacion =
      QueryStringProperty<ContactMedia>(_entities[4].properties[5]);

  /// see [ContactMedia.valor]
  static final valor =
      QueryStringProperty<ContactMedia>(_entities[4].properties[6]);

  /// see [ContactMedia.origenid]
  static final origenid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[7]);

  /// see [ContactMedia.origen]
  static final origen =
      QueryStringProperty<ContactMedia>(_entities[4].properties[8]);

  /// see [ContactMedia.tipoprioridadid]
  static final tipoprioridadid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[9]);

  /// see [ContactMedia.tipoprioridad]
  static final tipoprioridad =
      QueryStringProperty<ContactMedia>(_entities[4].properties[10]);

  /// see [ContactMedia.ciudadid]
  static final ciudadid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[11]);

  /// see [ContactMedia.ciudad]
  static final ciudad =
      QueryStringProperty<ContactMedia>(_entities[4].properties[12]);

  /// see [ContactMedia.codigodiscado]
  static final codigodiscado =
      QueryStringProperty<ContactMedia>(_entities[4].properties[13]);

  /// see [ContactMedia.estadoid]
  static final estadoid =
      QueryIntegerProperty<ContactMedia>(_entities[4].properties[14]);

  /// see [ContactMedia.estado]
  static final estado =
      QueryStringProperty<ContactMedia>(_entities[4].properties[15]);
}

/// [ContactRole] entity fields to define ObjectBox queries.
class ContactRole_ {
  /// see [ContactRole.rolid]
  static final rolid =
      QueryIntegerProperty<ContactRole>(_entities[5].properties[0]);

  /// see [ContactRole.clienteid]
  static final clienteid =
      QueryStringProperty<ContactRole>(_entities[5].properties[1]);

  /// see [ContactRole.personaid]
  static final personaid =
      QueryIntegerProperty<ContactRole>(_entities[5].properties[2]);

  /// see [ContactRole.contactoid]
  static final contactoid =
      QueryIntegerProperty<ContactRole>(_entities[5].properties[3]);

  /// see [ContactRole.tiporolid]
  static final tiporolid =
      QueryIntegerProperty<ContactRole>(_entities[5].properties[4]);

  /// see [ContactRole.tiporol]
  static final tiporol =
      QueryStringProperty<ContactRole>(_entities[5].properties[5]);

  /// see [ContactRole.estadoid]
  static final estadoid =
      QueryIntegerProperty<ContactRole>(_entities[5].properties[6]);

  /// see [ContactRole.estado]
  static final estado =
      QueryStringProperty<ContactRole>(_entities[5].properties[7]);
}

/// [Dashboard] entity fields to define ObjectBox queries.
class Dashboard_ {
  /// see [Dashboard.id]
  static final id = QueryIntegerProperty<Dashboard>(_entities[6].properties[0]);

  /// see [Dashboard.zonaid]
  static final zonaid =
      QueryStringProperty<Dashboard>(_entities[6].properties[1]);

  /// see [Dashboard.clientes]
  static final clientes =
      QueryIntegerProperty<Dashboard>(_entities[6].properties[2]);

  /// see [Dashboard.clientesCobertura]
  static final clientesCobertura =
      QueryIntegerProperty<Dashboard>(_entities[6].properties[3]);

  /// see [Dashboard.morosidad]
  static final morosidad =
      QueryStringProperty<Dashboard>(_entities[6].properties[4]);

  /// see [Dashboard.cuotaMes]
  static final cuotaMes =
      QueryStringProperty<Dashboard>(_entities[6].properties[5]);

  /// see [Dashboard.ventaMes]
  static final ventaMes =
      QueryStringProperty<Dashboard>(_entities[6].properties[6]);

  /// see [Dashboard.avanceMes]
  static final avanceMes =
      QueryStringProperty<Dashboard>(_entities[6].properties[7]);

  /// see [Dashboard.ventaMesAnt01]
  static final ventaMesAnt01 =
      QueryStringProperty<Dashboard>(_entities[6].properties[8]);

  /// see [Dashboard.ventaMesAnt02]
  static final ventaMesAnt02 =
      QueryStringProperty<Dashboard>(_entities[6].properties[9]);

  /// see [Dashboard.ventaMesAnt03]
  static final ventaMesAnt03 =
      QueryStringProperty<Dashboard>(_entities[6].properties[10]);

  /// see [Dashboard.ventaMesAnt04]
  static final ventaMesAnt04 =
      QueryStringProperty<Dashboard>(_entities[6].properties[11]);

  /// see [Dashboard.ventaMesAnt05]
  static final ventaMesAnt05 =
      QueryStringProperty<Dashboard>(_entities[6].properties[12]);

  /// see [Dashboard.ventaMesAnt06]
  static final ventaMesAnt06 =
      QueryStringProperty<Dashboard>(_entities[6].properties[13]);

  /// see [Dashboard.ventaMesAnt01Tit]
  static final ventaMesAnt01Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[14]);

  /// see [Dashboard.ventaMesAnt02Tit]
  static final ventaMesAnt02Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[15]);

  /// see [Dashboard.ventaMesAnt03Tit]
  static final ventaMesAnt03Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[16]);

  /// see [Dashboard.ventaMesAnt04Tit]
  static final ventaMesAnt04Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[17]);

  /// see [Dashboard.ventaMesAnt05Tit]
  static final ventaMesAnt05Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[18]);

  /// see [Dashboard.ventaMesAnt06Tit]
  static final ventaMesAnt06Tit =
      QueryStringProperty<Dashboard>(_entities[6].properties[19]);
}

/// [Product] entity fields to define ObjectBox queries.
class Product_ {
  /// see [Product.id]
  static final id = QueryIntegerProperty<Product>(_entities[7].properties[0]);

  /// see [Product.zonaid]
  static final zonaid =
      QueryStringProperty<Product>(_entities[7].properties[1]);

  /// see [Product.productoid]
  static final productoid =
      QueryStringProperty<Product>(_entities[7].properties[2]);

  /// see [Product.producto]
  static final producto =
      QueryStringProperty<Product>(_entities[7].properties[3]);

  /// see [Product.productoidProv]
  static final productoidProv =
      QueryStringProperty<Product>(_entities[7].properties[4]);

  /// see [Product.unidadmedidaid]
  static final unidadmedidaid =
      QueryIntegerProperty<Product>(_entities[7].properties[5]);

  /// see [Product.unidadmedida]
  static final unidadmedida =
      QueryStringProperty<Product>(_entities[7].properties[6]);

  /// see [Product.sublineaid]
  static final sublineaid =
      QueryStringProperty<Product>(_entities[7].properties[7]);

  /// see [Product.sublinea]
  static final sublinea =
      QueryStringProperty<Product>(_entities[7].properties[8]);

  /// see [Product.lineaid]
  static final lineaid =
      QueryStringProperty<Product>(_entities[7].properties[9]);

  /// see [Product.linea]
  static final linea =
      QueryStringProperty<Product>(_entities[7].properties[10]);

  /// see [Product.bpercepcion]
  static final bpercepcion =
      QueryBooleanProperty<Product>(_entities[7].properties[11]);

  /// see [Product.blote]
  static final blote =
      QueryBooleanProperty<Product>(_entities[7].properties[12]);

  /// see [Product.bpsicotropico]
  static final bpsicotropico =
      QueryBooleanProperty<Product>(_entities[7].properties[13]);

  /// see [Product.brefrigerado]
  static final brefrigerado =
      QueryBooleanProperty<Product>(_entities[7].properties[14]);

  /// see [Product.stock]
  static final stock =
      QueryIntegerProperty<Product>(_entities[7].properties[15]);

  /// see [Product.lotes]
  static final lotes =
      QueryIntegerProperty<Product>(_entities[7].properties[16]);

  /// see [Product.vencimientocorto]
  static final vencimientocorto =
      QueryBooleanProperty<Product>(_entities[7].properties[17]);

  /// see [Product.escalas]
  static final escalas =
      QueryIntegerProperty<Product>(_entities[7].properties[18]);

  /// see [Product.bonificaciones]
  static final bonificaciones =
      QueryIntegerProperty<Product>(_entities[7].properties[19]);

  /// see [Product.lastSync]
  static final lastSync =
      QueryIntegerProperty<Product>(_entities[7].properties[20]);
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

  /// see [Session.zoneIds]
  static final zoneIds =
      QueryStringProperty<Session>(_entities[8].properties[19]);

  /// see [Session.tokenExpiracion]
  static final tokenExpiracion =
      QueryIntegerProperty<Session>(_entities[8].properties[20]);
}

/// [SyncManager] entity fields to define ObjectBox queries.
class SyncManager_ {
  /// see [SyncManager.id]
  static final id =
      QueryIntegerProperty<SyncManager>(_entities[9].properties[0]);

  /// see [SyncManager.zoneId]
  static final zoneId =
      QueryStringProperty<SyncManager>(_entities[9].properties[1]);

  /// see [SyncManager.syncType]
  static final syncType =
      QueryStringProperty<SyncManager>(_entities[9].properties[2]);

  /// see [SyncManager.lastSyncDownDate]
  static final lastSyncDownDate =
      QueryIntegerProperty<SyncManager>(_entities[9].properties[3]);

  /// see [SyncManager.lastSyncUpDate]
  static final lastSyncUpDate =
      QueryIntegerProperty<SyncManager>(_entities[9].properties[4]);
}

/// [Zone] entity fields to define ObjectBox queries.
class Zone_ {
  /// see [Zone.id]
  static final id = QueryIntegerProperty<Zone>(_entities[10].properties[0]);

  /// see [Zone.zonaid]
  static final zonaid = QueryStringProperty<Zone>(_entities[10].properties[1]);

  /// see [Zone.nombre]
  static final nombre = QueryStringProperty<Zone>(_entities[10].properties[2]);

  /// see [Zone.vendedorid]
  static final vendedorid =
      QueryStringProperty<Zone>(_entities[10].properties[3]);

  /// see [Zone.vendedor]
  static final vendedor =
      QueryStringProperty<Zone>(_entities[10].properties[4]);

  /// see [Zone.canalid]
  static final canalid = QueryStringProperty<Zone>(_entities[10].properties[5]);

  /// see [Zone.canal]
  static final canal = QueryStringProperty<Zone>(_entities[10].properties[6]);

  /// see [Zone.subcanalid]
  static final subcanalid =
      QueryStringProperty<Zone>(_entities[10].properties[7]);

  /// see [Zone.subcanal]
  static final subcanal =
      QueryStringProperty<Zone>(_entities[10].properties[8]);

  /// see [Zone.unidadnegocioid]
  static final unidadnegocioid =
      QueryStringProperty<Zone>(_entities[10].properties[9]);

  /// see [Zone.unidadnegocio]
  static final unidadnegocio =
      QueryStringProperty<Zone>(_entities[10].properties[10]);

  /// see [Zone.activo]
  static final activo =
      QueryBooleanProperty<Zone>(_entities[10].properties[11]);

  /// see [Zone.especial]
  static final especial =
      QueryBooleanProperty<Zone>(_entities[10].properties[12]);
}
