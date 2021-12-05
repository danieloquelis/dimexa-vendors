import 'package:dimexa_vendors/modules/client_page/client_controller.dart';
import 'package:get/get.dart';

class ClientsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientsController());
  }

}