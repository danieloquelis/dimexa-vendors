import 'package:dimexa_vendors/modules/client_details_page/client_details_binding.dart';
import 'package:dimexa_vendors/modules/client_details_page/client_details_page.dart';
import 'package:dimexa_vendors/modules/login_page/login_binding.dart';
import 'package:dimexa_vendors/modules/login_page/login_page.dart';
import 'package:dimexa_vendors/modules/map_page/map_binding.dart';
import 'package:dimexa_vendors/modules/map_page/map_page.dart';
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
      preventDuplicates: true
    ),
    GetPage(
      name: AppRoutes.tabManager,
      page: () => TabManager(),
      binding: TabManagerBinding(),
      preventDuplicates: true
    ),
    GetPage(
      name: AppRoutes.clientDetails,
      page: () => ClientDetailsPage(),
      binding: ClientDetailsBinding(),
      transition: Transition.rightToLeft,
      preventDuplicates: true
    ),
    GetPage(
      name: AppRoutes.clientAddressMap,
      page: () => MapPage(),
      binding: MapBinding(),
      transition: Transition.rightToLeft,
      preventDuplicates: true,
    )
  ];
}