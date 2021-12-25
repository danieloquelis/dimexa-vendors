import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/api/client_api/cient_api.dart';
import 'package:dimexa_vendors/data/api/device_api/device_api.dart';
import 'package:dimexa_vendors/data/api/google_api/google_api.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor_impl.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor_impl.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/address_repository/address_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static Future<void> init() async {
    //db
    ObjectBox objectBox = await ObjectBox.create();
    final store = objectBox.store;
    Get.lazyPut(() => ObjectBox(store));

    //api
    Get.lazyPut(() => Http());
    Get.lazyPut(() => AuthAPI());
    Get.lazyPut(() => DeviceAPI());
    Get.lazyPut(() => ClientAPI());
    Get.lazyPut(() => GoogleAPI());

    //repositories
    Get.lazyPut(() => SessionRepositoryImpl());
    Get.lazyPut(() => ClientRepository());
    Get.lazyPut(() => SyncManagerRepository());
    Get.lazyPut(() => ContactRepository());
    Get.lazyPut(() => AddressRepository());

    //interceptors
    Get.lazyPut(() => DeviceInterceptorImpl());
    Get.lazyPut(() => AuthInterceptorImpl());
    Get.lazyPut(() => ClientInterceptor());
    Get.lazyPut(() => GoogleInterceptor());
  }
}