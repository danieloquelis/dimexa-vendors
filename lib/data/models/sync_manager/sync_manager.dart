import 'package:objectbox/objectbox.dart';

@Entity()
class SyncManager {
  int id;
  String? syncType;
  DateTime? lastSyncDownDate;
  DateTime? lastSyncUpDate;

  SyncManager({
    this.id = 0,
    this.syncType,
    this.lastSyncDownDate,
    this.lastSyncUpDate
  });
}