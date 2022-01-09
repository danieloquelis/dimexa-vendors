import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/dashboard_api/dashboard_api.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class DashboardInterceptor {
  final _api = Get.find<DashboardAPI>();

  Future<BackendResponse<Dashboard>?> sync(String? token, List<String> zoneIds, RxInt received, RxInt total) async {
    final result = await _api.getByZoneIds(
        zoneIds: zoneIds,
        token: token ?? "",
        received: received,
        total: total
    );

    if (result.error == null) {
      BackendResponse<Dashboard> response = BackendResponse.fromJson(result.data, Dashboard.fromJsonModel);
      return response;
    }

    return Future.error(
      AppException(
        interceptorErrorHandler(
          result,
        )
      )
    );
  }

}