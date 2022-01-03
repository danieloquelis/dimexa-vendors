import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/api/client_api/cient_api.dart';
import 'package:dimexa_vendors/data/api/dashboard_api/dashboard_api.dart';
import 'package:dimexa_vendors/data/api/device_api/device_api.dart';
import 'package:dimexa_vendors/data/api/google_api/google_api.dart';
import 'package:dimexa_vendors/data/api/product_api/product_api.dart';
import 'package:dimexa_vendors/data/api/zone_api/zone_api.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor_impl.dart';
import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/dashboard_interceptor/dashboard_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor_impl.dart';
import 'package:dimexa_vendors/data/interceptors/google_interceptor/google_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/product_interceptor/product_interceptor.dart';
import 'package:dimexa_vendors/data/interceptors/zone_interceptor/zone_interceptor.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/address_repository/address_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/client_wallet_repository/client_wallet_repository.dart';
import 'package:dimexa_vendors/data/repositories/contact_repository/contact_repository.dart';
import 'package:dimexa_vendors/data/repositories/dashboard_repository/dashboard_repository.dart';
import 'package:dimexa_vendors/data/repositories/product_repository/product_repository.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/data/repositories/zone_repository/zone_repository.dart';
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
    Get.lazyPut(() => ZoneAPI());
    Get.lazyPut(() => DashboardAPI());
    Get.lazyPut(() => ProductAPI());

    //repositories
    Get.lazyPut(() => SessionRepositoryImpl());
    Get.lazyPut(() => ClientRepository());
    Get.lazyPut(() => SyncManagerRepository());
    Get.lazyPut(() => ContactRepository());
    Get.lazyPut(() => AddressRepository());
    Get.lazyPut(() => ZoneRepository());
    Get.lazyPut(() => DashboardRepository());
    Get.lazyPut(() => ClientWalletRepository());
    Get.lazyPut(() => ProductRepository());

    //interceptors
    Get.lazyPut(() => DeviceInterceptorImpl());
    Get.lazyPut(() => AuthInterceptorImpl());
    Get.lazyPut(() => ClientInterceptor());
    Get.lazyPut(() => ZoneInterceptor());
    Get.lazyPut(() => DashboardInterceptor());
    Get.lazyPut(() => ProductInterceptor());
  }
}