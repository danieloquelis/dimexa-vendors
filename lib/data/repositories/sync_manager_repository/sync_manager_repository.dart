import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository_abstract.dart';
import 'package:get/get.dart';

class SyncManagerRepository implements SyncManagerRepositoryAbstract {
  final _syncManagerBox = Get.find<ObjectBox>().syncManagerBox;

  @override
  SyncManager? getByType(SyncType type) {
    final query = _syncManagerBox.query(SyncManager_.syncType.equals(type.toString())).build();
    return query.findFirst();
  }

  @override
  void updateByType(SyncType type, {bool syncDown = false, bool syncUp = false}) {
    SyncManager? currentDocument = getByType(type);
    SyncManager newSync = SyncManager();
    if (currentDocument != null) {
      newSync.id = currentDocument.id;
    }

    newSync.syncType = type.toString();

    if (syncDown) {
      newSync.lastSyncDownDate = DateTime.now();
    }

    if (syncUp) {
      newSync.lastSyncUpDate = DateTime.now();
    }

    try {
      _syncManagerBox.put(newSync);
    } catch(e) {
      onDBCatchError();
    }
  }


}