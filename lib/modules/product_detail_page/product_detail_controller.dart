import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/detail_bottom_sheet/detail_bottom_sheet.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {

  late Product _product;


  Product get product => _product;

  @override
  void onInit() {
    super.onInit();
    _product = Get.arguments['product'];
  }

  void showPriceScaleBottomSheet() {
    Get.bottomSheet(
      DetailBottomSheet.priceScale(),
      isScrollControlled: true
    );
  }

  void showBonificationBottomSheet() {
    // Get.bottomSheet(
    //   DetailBottomSheet.bonification(),
    //   isScrollControlled: true
    // );
  }
}