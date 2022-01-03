import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/enums/search_product_filter/search_product_filter.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/cupertino_bsheet_item/cupertino_bsheet_item.dart';
import 'package:dimexa_vendors/global_widgets/custom_tooltip/custom_tooltip.dart';
import 'package:dimexa_vendors/global_widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/global_widgets/table_header/table_header.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/description_cell/description_cell.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/line_cell/line_cell.dart';
import 'package:dimexa_vendors/modules/product_page/local_widgets/quantity_cell/quantity_cell.dart';
import 'package:dimexa_vendors/modules/product_page/product_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
            lastUpdate: DateTimeUtil.dateTimeToText(_.lastSyncDate),
            syncOnDemand: _.syncOnDemand,
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
                    placeHolder: _.filterType.displayName,
                    onChange: (String value) {
                      _.setSearchText(value);
                    },
                    onChangeFilter: () {
                      showFilterOptions(_);
                    },
                    onClearSearch: () {
                      _.setSearchText("");
                    },
                  ),
                ),
                _.loading ? const Expanded(
                  child: Center(
                    child: SpinKitChasingDots(
                      color: AppColors.green,
                    ),
                  ),
                ) : CollectionUtils.isNullOrEmpty(_.products) ?Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.search, size: 128, color: AppColors.gray,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text('Escribe en la barra de búsqueda para encontrar productos.', textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ) : result(_),
                actions()
              ],
            ),
          ),
        )
    );
  }

  Widget result(ProductController _) {
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
              rows: _.products.map((product) {
                return DataRow(
                  cells: [
                    DataCell(
                        CustomTooltip(
                          child: DescriptionCell(
                            product: product,
                          ),
                          message: StringUtils.checkNullOrEmpty(product.producto),
                        )
                    ),
                    DataCell(
                        Text(StringUtils.checkNullOrEmpty(product.productoid))
                    ),
                    DataCell(
                        CustomTooltip(
                          child: LineCell(
                            line: StringUtils.checkNullOrEmpty(product.linea),
                          ),
                          message: StringUtils.checkNullOrEmpty(product.linea),
                        )
                    ),
                    DataCell(
                        Text('${product.stock}')
                    ),
                    const DataCell(
                        QuantityCell()
                    )
                  ],
                  onSelectChanged: (selected) {
                    _.goToProductDetail(product.productoid);
                  },
                );
              }).toList()
          )
        ),
      )
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

  Future<dynamic>? showFilterOptions(ProductController _) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(
            AppTranslations.of(context)!.text("filter_of_searching"),
            style: const TextStyle(
                fontSize: 18,
                color: AppColors.gray
            ),
          ),
          actions: SearchProductFilter.values.map((filterType) {
            return CupertinoBSheetItem(
              label: filterType.displayName,
              onClick: () {
                _.setFilterType(filterType);
                Navigator.pop(context);
              },
              isSelected: false,
            );
          }).toList(),
        )
    );
  }
}
