import 'package:dimexa_vendors/modules/cient_page/clients_controller.dart';
import 'package:get/get.dart';

class ClientsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientsController());
  }

}