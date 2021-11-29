import 'package:dimexa_vendors/modules/tab_manager/tab_manager_controller.dart';
import 'package:get/get.dart';

class TabManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabManagerController());
  }

}