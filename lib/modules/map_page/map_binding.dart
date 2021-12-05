import 'package:dimexa_vendors/modules/map_page/map_controller.dart';
import 'package:get/get.dart';

class MapBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => MapController());
  }

}