import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/table_header/table_header.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/general_info/general_info.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/product_card_info/product_card_info.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/quantity_text_field/quantity_text_field.dart';
import 'package:dimexa_vendors/modules/product_detail_page/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      builder: (_) => Scaffold(
          appBar: BaseAppBar(
              title: AppTranslations.of(context)!.text('product_detail'),
              lastUpdate: "hoy a las 23",
              syncOnDemand: () {},
              back: Get.back
          ).widget(),
          body: Container(
            decoration: const BoxDecoration(
                color: AppColors.basePage,
                borderRadius: BorderRadius.vertical(top: Radius.circular(18))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      'APRONAX x 100 mg x 10 tabletas',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GeneralInfo(),
                      QuantityTextField()
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ProductCardInfo.priceScale(
                            onSeeMore: _.showPriceScaleBottomSheet,
                          ),
                          const SizedBox(height: 24,),
                          ProductCardInfo.bonification(
                            onSeeMore: _.showBonificationBottomSheet,
                          ),
                          const SizedBox(height: 24,),
                          ProductCardInfo.productInfo(
                            onSeeMore: () {},
                          ),
                          const SizedBox(height: 16,)
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      //_.login();
                    },
                    icon: Icon(Icons.add),
                    label: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("Agregar"),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

