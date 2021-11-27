import 'package:dimexa_vendors/modules/login_page/login_binding.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:dimexa_vendors/modules/tab_manager/tab_manager.dart';
import 'package:dimexa_vendors/modules/tab_manager/tab_manager_binding.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => Login(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.tabManager,
      page: () => TabManager(),
      binding: TabManagerBinding(),
    ),
  ];
}