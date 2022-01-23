import 'package:dimexa_vendors/data/api/google_api/google_api.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/modules/map_page/map_controller.dart';
import 'package:get/get.dart';

class MapBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => MapController());
    Get.lazyPut(() => GoogleAPI(), fenix: true);
    Get.lazyPut(() => GoogleInterceptor(), fenix: true);
  }

}