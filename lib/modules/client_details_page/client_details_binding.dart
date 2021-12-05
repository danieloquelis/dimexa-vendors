import 'package:dimexa_vendors/modules/client_details_page/client_details_controller.dart';
import 'package:get/get.dart';

class ClientDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientDetailsController());
  }

}