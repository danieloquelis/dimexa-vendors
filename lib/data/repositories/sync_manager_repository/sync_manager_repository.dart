
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class SyncManagerRepository {
  final _syncManagerBox = Get.find<ObjectBox>().syncManagerBox;

  @override
  SyncManager? getByTypeAndZoneId(String zoneId, SyncType type) {
    final query = _syncManagerBox.query(SyncManager_.zoneId.equals(zoneId).and(SyncManager_.syncType.equals(type.toString()))).build();
    return query.findFirst();
  }

  @override
  void updateByTypeAndZone(String zoneId, SyncType type, {bool syncDown = true, bool syncUp = false}) {
    SyncManager? currentDocument = getByTypeAndZoneId(zoneId, type);
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

  @override
  List<SyncManager>? getByTypeAndZoneIds(List<String> zoneIds, SyncType type) {
    final query = _syncManagerBox.query(
      SyncManager_.zoneId.oneOf(zoneIds)
      .and(SyncManager_.syncType.equals(type.toString()))
    ).build();
    return query.find();
  }

  @override
  void updateByTypeAndZoneIds(List<String> zoneIds, SyncType type, {bool syncDown = true, bool syncUp = false}) {
    List<SyncManager>? currentDocuments = getByTypeAndZoneIds(zoneIds, type);
    List<SyncManager> newSyncs = [];
    DateTime now = DateTime.now();
    if (CollectionUtils.isNotNullNorEmpty(currentDocuments)) {
      for (SyncManager storedSyncManager in currentDocuments!) {
        if (syncDown) {
          storedSyncManager.lastSyncDownDate = now;
        }

        if (syncUp) {
          storedSyncManager.lastSyncUpDate = now;
        }
        newSyncs.add(storedSyncManager);
      }
    } else {
      for (String zoneId in zoneIds) {
        SyncManager newSync = SyncManager();
        newSync.zoneId = zoneId;
        newSync.syncType = type.toString();
        if (syncDown) {
          newSync.lastSyncDownDate = now;
        }

        if (syncUp) {
          newSync.lastSyncUpDate = now;
        }
        newSyncs.add(newSync);
      }
    }

    try {
      _syncManagerBox.putMany(newSyncs);
    } catch(e) {
      onDBCatchError();
    }
  }

  @override
  SyncManager? getByType(SyncType type) {
    final query = _syncManagerBox.query(SyncManager_.syncType.equals(type.toString())).build();
    return query.findFirst();
  }

  @override
  void updateByType(SyncType type, {bool syncDown = true, bool syncUp = false}) {
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