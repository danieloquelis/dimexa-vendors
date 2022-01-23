import 'dart:io';

import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/client_wallet/cient_wallet.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:dimexa_vendors/data/models/document_type/document_type.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';


class ObjectBox {
  late final Store store;
  Box<Session>? _sessionBox;
  Box<Client>? _clientBox;
  Box<ClientWallet>? _clientWalletBox;
  Box<Contact>? _contactBox;
  Box<ContactRole>? _contactRoleBox;
  Box<ContactMedia>? _contactMediaBox;
  Box<Address>? _addressBox;
  Box<SyncManager>? _syncManagerBox;
  Box<Zone>? _zoneBox;
  Box<Dashboard>? _dashboardBox;
  Box<Product>? _productBox;
  Box<DocumentType>? _documentTypeBox;

  Box<Session> get sessionBox => _sessionBox!;
  Box<Client> get clientBox => _clientBox!;
  Box<Address> get addressBox => _addressBox!;
  Box<Contact> get contactBox => _contactBox!;
  Box<Zone> get zoneBox => _zoneBox!;
  Box<SyncManager> get syncManagerBox => _syncManagerBox!;
  Box<ContactMedia> get contactMediaBox => _contactMediaBox!;
  Box<ContactRole> get contactRoleBox => _contactRoleBox!;
  Box<Dashboard> get dashboardBox => _dashboardBox!;
  Box<ClientWallet> get clientWalletBox => _clientWalletBox!;
  Box<Product> get productBox => _productBox!;
  Box<DocumentType> get documentTypeBox => _documentTypeBox!;

  ObjectBox(Store store) {
    _sessionBox = store.box<Session>();
    _clientBox = store.box<Client>();
    _addressBox = store.box<Address>();
    _contactBox = store.box<Contact>();
    _contactRoleBox = store.box<ContactRole>();
    _contactMediaBox = store.box<ContactMedia>();
    _syncManagerBox = store.box<SyncManager>();
    _zoneBox = store.box<Zone>();
    _dashboardBox = store.box<Dashboard>();
    _clientWalletBox = store.box<ClientWallet>();
    _productBox = store.box<Product>();
    _documentTypeBox = store.box<DocumentType>();
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