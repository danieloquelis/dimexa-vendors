import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/dashboard_repository/dashboard_repository_abstract.dart';
import 'package:get/get.dart';

class DashboardRepository implements DashboardRepositoryAbstract {
  final dashboardBox = Get.find<ObjectBox>().dashboardBox;

  @override
  void save(List<String> zoneIds, List<Dashboard> data) {
    try {
      dashboardBox.query(Dashboard_.zonaid.oneOf(zoneIds)).build().remove();
      dashboardBox.putMany(data);
    } catch(e) {
      onDBCatchError();
    }
  }

  Dashboard? getByZoneId(String zoneId) {
    return dashboardBox.query(Dashboard_.zonaid.equals(zoneId)).build().findUnique();
  }
}