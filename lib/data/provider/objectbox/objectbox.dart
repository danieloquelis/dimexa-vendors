import 'dart:io';

import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  late final Store store;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  static Future<ObjectBox> create() async {
    Directory appDocDirectory = await getApplicationDocumentsDirectory();
    final store = openStore(
      directory: appDocDirectory.path,
    );
    return ObjectBox._create(store);
  }
}