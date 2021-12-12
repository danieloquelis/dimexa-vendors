import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  void goToProductDetail() {
    Get.toNamed(AppRoutes.productDetail);
  }
}