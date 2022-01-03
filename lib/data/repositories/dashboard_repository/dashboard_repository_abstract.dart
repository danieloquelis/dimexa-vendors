import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';

abstract class DashboardRepositoryAbstract {

  ///Sync data of dashboard
  ///only exists sync down for this case, no need to add sync up
  void save(List<String> zoneIds, List<Dashboard> data);
}