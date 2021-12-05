import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';

abstract class SyncManagerRepositoryAbstract {
  SyncManager? getByType(String zoneId, SyncType type);

  void updateByType(String zoneId, SyncType type);

  List<SyncManager>? getByTypeAndZoneIds(List<String> zoneIds, SyncType type);

  void updateByTypeAndZoneIds(List<String> zoneIds, SyncType type);
}