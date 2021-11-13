import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut(() => Http());
    Get.lazyPut(() => AuthAPI());
  }
}