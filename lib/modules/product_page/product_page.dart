import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
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
                Expanded(
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
                        columns: [
                          DataColumn(
                            label: Text('Descripcion'),
                          ),
                          DataColumn(label: Text('Código')),
                          DataColumn(label: Text('Línea')),
                          DataColumn(label: Text('Stock')),
                          DataColumn(label: Text('Cant.'))
                        ],
                        rows: [
                          DataRow(
                            cells: [
                              DataCell(
                                Tooltip(
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apronax x 100 mg x 10 Tabletas texto largo TEXTO LARGO',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 6,),
                                        FittedBox(
                                          child: Row(
                                            children: [
                                              Tag(
                                                label: "VC",
                                                backgroundColor: AppColors.green,
                                                fontColor: Colors.white,
                                              ),
                                              SizedBox(width: 4,),
                                              Tag(
                                                label: "2 ES",
                                                backgroundColor: AppColors.blue,
                                                fontColor: Colors.white,
                                              ),
                                              SizedBox(width: 4,),
                                              Tag(
                                                label: "1 BF",
                                                backgroundColor: AppColors.orange,
                                                fontColor: Colors.white,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    width: 128,
                                  ),
                                  message: 'Apronax x 100 mg x 10 Tabletas texto largo TEXTO LARGO',
                                  height: 56,
                                  verticalOffset: 6,
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  showDuration: Duration(seconds: 5),
                                ),
                                
                              ),
                              DataCell(Text('123456')),
                              DataCell(
                                  Container(
                                      child: Text('Bayer Bayer', overflow: TextOverflow.ellipsis, maxLines: 2,),
                                    width: 42,
                                  )
                              ),
                              DataCell(Text('250')),
                              DataCell(
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
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
                ),
                Padding(
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
                ),
              ],
            ),
          ),
        )
    );
  }
}
