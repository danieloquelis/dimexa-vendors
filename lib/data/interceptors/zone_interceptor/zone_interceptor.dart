import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/zone_api/zone_api.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:get/get.dart';

class ZoneInterceptor  {
  final _api = Get.find<ZoneAPI>();

  Future<BackendResponse<Zone>?> syncDownZones(String? token, RxInt received, RxInt total) async {
    final result = await _api.get(
        token: token ?? "",
        received: received,
        total: total
    );

    if (result.error == null) {
      BackendResponse<Zone> response = BackendResponse.fromJson(result.data, Zone.fromJsonModel);
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