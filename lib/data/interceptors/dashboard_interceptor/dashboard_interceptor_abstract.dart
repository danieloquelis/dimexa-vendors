import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:get/get_rx/get_rx.dart';

abstract class DashboardInterceptorAbstract {
  Future<BackendResponse<Dashboard>?> sync(String? token, List<String> zoneIds, RxInt received, RxInt total);
}