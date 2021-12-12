import 'package:dimexa_vendors/modules/client_detail_page/client_detail_controller.dart';
import 'package:get/get.dart';

class ClientDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientDetailController());
  }

}