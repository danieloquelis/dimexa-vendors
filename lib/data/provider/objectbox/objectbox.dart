import 'dart:io';

import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  late final Store store;
  Box<Session>? _sessionBox;


  Box<Session> get sessionBox => _sessionBox!;

  ObjectBox(Store store) {
    _sessionBox = store.box<Session>();
  }

  static Future<ObjectBox> create() async {
    Directory appDocDirectory = await getApplicationDocumentsDirectory();
    final store = await openStore(
      directory: appDocDirectory.path,
    );
    return ObjectBox._create(store);
  }

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.

  }
}