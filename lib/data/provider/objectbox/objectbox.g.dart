// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';

import '../../models/client/client.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6699724331230603426),
      name: 'Client',
      lastPropertyId: const IdUid(6, 4491421967749622635),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7067592233169603036),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4038054247999633661),
            name: 'sid',
            type: 6,
            flags: 40,
            indexId: const IdUid(1, 610463959740638818)),
        ModelProperty(
            id: const IdUid(3, 4486288578737980769),
            name: 'commercialName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6693488587444681462),
            name: 'socialName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 9077106740683649481),
            name: 'address',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 4491421967749622635),
            name: 'ruc',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Store openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) =>
    Store(getObjectBoxModel(),
        directory: directory,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 6699724331230603426),
      lastIndexId: const IdUid(1, 610463959740638818),
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
          final commercialNameOffset = fbb.writeString(object.commercialName);
          final socialNameOffset = fbb.writeString(object.socialName);
          final addressOffset = fbb.writeString(object.address);
          final rucOffset = fbb.writeString(object.ruc);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.sid);
          fbb.addOffset(2, commercialNameOffset);
          fbb.addOffset(3, socialNameOffset);
          fbb.addOffset(4, addressOffset);
          fbb.addOffset(5, rucOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Client(
              sid: const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              commercialName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 8, ''),
              socialName:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 10, ''),
              address:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 12, ''),
              ruc:
                  const fb.StringReader().vTableGet(buffer, rootOffset, 14, ''))
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
  static final sid = QueryIntegerProperty<Client>(_entities[0].properties[1]);

  /// see [Client.commercialName]
  static final commercialName =
      QueryStringProperty<Client>(_entities[0].properties[2]);

  /// see [Client.socialName]
  static final socialName =
      QueryStringProperty<Client>(_entities[0].properties[3]);

  /// see [Client.address]
  static final address =
      QueryStringProperty<Client>(_entities[0].properties[4]);

  /// see [Client.ruc]
  static final ruc = QueryStringProperty<Client>(_entities[0].properties[5]);
}
