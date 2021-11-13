import 'dart:io';

import 'package:dimexa_vendors/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  late final Store store;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  static Future<ObjectBox> create() async {
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    Directory appDocDirectory = await getApplicationDocumentsDirectory();
    final store = openStore(
      directory: appDocDirectory.path
    );
    return ObjectBox._create(store);
  }
}