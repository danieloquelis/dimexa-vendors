import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/api/device_api/device_api.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor_impl.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() async {
    //db
    ObjectBox objectBox = await ObjectBox.create();
    final store = objectBox.store;
    Get.lazyPut(() => ObjectBox(store));

    //api
    Get.lazyPut(() => Http());
    Get.lazyPut(() => AuthAPI());
    Get.lazyPut(() => DeviceAPI());

    //repositories
    Get.lazyPut(() => SessionRepositoryImpl());

    //interceptors
    Get.lazyPut(() => DeviceInterceptorImpl());
  }
}