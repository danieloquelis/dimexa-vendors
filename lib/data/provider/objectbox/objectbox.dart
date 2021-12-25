import 'dart:io';

import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';


class ObjectBox {
  late final Store store;
  Box<Session>? _sessionBox;
  Box<Client>? _clientBox;
  Box<Contact>? _contactBox;
  Box<Address>? _addressBox;
  Box<SyncManager>? _syncManagerBox;

  Box<Session> get sessionBox => _sessionBox!;
  Box<Client> get clientBox => _clientBox!;
  Box<Address> get addressBox => _addressBox!;
  Box<Contact> get contactBox => _contactBox!;

  Box<SyncManager> get syncManagerBox => _syncManagerBox!;

  ObjectBox(Store store) {
    _sessionBox = store.box<Session>();
    _clientBox = store.box<Client>();
    _addressBox = store.box<Address>();
    _contactBox = store.box<Contact>();
    _syncManagerBox = store.box<SyncManager>();
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