import 'package:dimexa_vendors/modules/restore_password_page/restore_password_controller.dart';
import 'package:get/get.dart';

class RestorePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestorePasswordController());
  }

}