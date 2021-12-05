import 'package:dimexa_vendors/modules/cient_page/clients_binding.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_details/client_details.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_map/client_map.dart';
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
      page: () => ClientDetails(),
      binding: ClientsBinding(),
      preventDuplicates: true
    ),
    GetPage(
      name: AppRoutes.clientAdressMap,
      page: () => ClientMap(),
      binding: ClientsBinding(),
      transition: Transition.rightToLeft,
      preventDuplicates: true,
    )
  ];
}