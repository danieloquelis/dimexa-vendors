import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/detail_bottom_sheet/detail_bottom_sheet.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
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