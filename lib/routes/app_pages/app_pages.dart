import 'package:dimexa_vendors/modules/home_page/home_binding.dart';
import 'package:dimexa_vendors/modules/home_page/home_page.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}