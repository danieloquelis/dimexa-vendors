import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:get/get_rx/get_rx.dart';

abstract class ZoneInterceptorAbstract {
  Future<BackendResponse<Zone>?> syncDownZones(String? token, RxInt received, RxInt total);
}