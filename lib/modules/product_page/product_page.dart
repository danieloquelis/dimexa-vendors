import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/custom_tooltip/custom_tooltip.dart';
import 'package:dimexa_vendors/global_widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/global_widgets/table_header/table_header.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/description_cell/description_cell.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/line_cell/line_cell.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/quantity_cell/quantity_cell.dart';
import 'package:dimexa_vendors/modules/product_page/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
        init: ProductController(),
        builder: (_) => Scaffold(
          appBar: BaseAppBar(
            title: AppTranslations.of(context)!.text('products'),
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
                  child: SearchBar(
                    //placeHolder: _.filterType.displayName,
                    onChange: (String value) {
                      //_.setSearchText(value);
                    },
                    onChangeFilter: () {
                      //showFilterOptions(_);
                    },
                    onClearSearch: () {
                      //_.setSearchText("");
                    },
                  ),
                ),
                content(_),
                actions()
              ],
            ),
          ),
        )
    );
  }

  Widget content(ProductController _) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            horizontalMargin: 16,
            columnSpacing: 14,
            headingRowHeight: 36,
            dataRowHeight: 80,
            showCheckboxColumn: false,
            columns: Strings.productHeaders.map((header){
              return TableHeader(label: header);
            }).toList(),
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    CustomTooltip(
                      child: DescriptionCell(),
                      message: "DESCRIPCIÓN TOTAL AQUO",
                    )
                  ),
                  DataCell(Text('123456')),
                  DataCell(
                    LineCell()
                  ),
                  DataCell(Text('250')),
                  DataCell(
                    QuantityCell()
                  )
                ],
                onSelectChanged: (selected) {
                  _.goToProductDetail();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget actions() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
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
          ),
          SizedBox(width: 8,),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                //_.login();
              },
              icon: Icon(Icons.shopping_cart),
              label: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("Ver orden"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
