import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';

abstract class SyncManagerRepositoryAbstract {
  SyncManager? getByType(SyncType type);

  void updateByType(SyncType type);
}