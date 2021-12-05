import 'package:objectbox/objectbox.dart';

@Entity()
class SyncManager {
  int id;
  @Index()
  String? zoneId;
  String? syncType;
  DateTime? lastSyncDownDate;
  DateTime? lastSyncUpDate;

  SyncManager({
    this.id = 0,
    this.zoneId,
    this.syncType,
    this.lastSyncDownDate,
    this.lastSyncUpDate
  });
}