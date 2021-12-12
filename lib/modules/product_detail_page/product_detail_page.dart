import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Cod.'),
                              SizedBox(width: 8,),
                              Text('548224')
                            ],
                          ),
                          Row(
                            children: [
                              Text('Stock'),
                              SizedBox(width: 8,),
                              Text('527 Unidades')
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Cantidad'),
                          SizedBox(height: 6,),
                          Container(
                            width: 64,
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
                        ],
                      )
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
                          CardTitle(
                            title: "Precios - escalas",
                            fontColor: AppColors.blue,
                          ),
                          CustomCard(
                              padding: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DataTable(
                                    columns: [
                                      DataColumn(label: Text('Cant.', style: TextStyle(color: AppColors.greyLight),)),
                                      DataColumn(label: Text('P.Unit', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('P.Cont', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('P.C/E', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('P.Con Prom', style: TextStyle(color: AppColors.greyLight))),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Text('1')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29'))
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('1')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29'))
                                        ],
                                      )
                                    ],
                                    columnSpacing: 20,
                                    horizontalMargin: 0,
                                  ),
                                  InkWell(
                                      onTap: () {

                                      },
                                      child: Text(
                                        AppTranslations.of(context)!.text("see_more"),
                                        style: const TextStyle(color: AppColors.orange),
                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: 24,),
                          CardTitle(
                            title: "Bonificación",
                            fontColor: AppColors.blue,
                          ),
                          CustomCard(
                              padding: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DataTable(
                                    columns: [
                                      DataColumn(label: Text('Código', style: TextStyle(color: AppColors.greyLight),)),
                                      DataColumn(label: Text('Descripción', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('Tramo', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('Cant.', style: TextStyle(color: AppColors.greyLight))),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Text('1')),
                                          DataCell(Text('Aproxol x 100mg x 1 caja ddd', maxLines: 2, overflow: TextOverflow.ellipsis,)),
                                          DataCell(Text('10.29')),
                                          DataCell(Text('10.29')),
                                        ],
                                      ),

                                    ],
                                    columnSpacing: 28,
                                    horizontalMargin: 0,
                                  ),
                                  InkWell(
                                      onTap: () {

                                      },
                                      child: Text(
                                        AppTranslations.of(context)!.text("see_more"),
                                        style: const TextStyle(color: AppColors.orange),
                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: 24,),
                          CardTitle(
                            title: "Información de producto",
                            fontColor: AppColors.blue,
                          ),
                          CustomCard(
                              padding: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DataTable(
                                    columns: [
                                      DataColumn(label: Text('Lote', style: TextStyle(color: AppColors.greyLight),)),
                                      DataColumn(label: Text('Vencimiento', style: TextStyle(color: AppColors.greyLight))),
                                      DataColumn(label: Text('Stock', style: TextStyle(color: AppColors.greyLight))),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Text('200564')),
                                          DataCell(Text('01-05-2022')),
                                          DataCell(Text('250')),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('200564')),
                                          DataCell(Text('01-05-2022')),
                                          DataCell(Text('250')),
                                        ],
                                      )
                                    ],
                                    columnSpacing: 72,
                                    horizontalMargin: 0,
                                      headingRowHeight: 24,
                                      dataRowHeight: 28
                                  ),
                                  SizedBox(height: 16,),
                                  DataTable(
                                    columns: [
                                      DataColumn(label: Text('Molecula', style: TextStyle(color: AppColors.greyLight),)),
                                      DataColumn(label: Text('Fecha de ingreso', style: TextStyle(color: AppColors.greyLight))),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Text('NAPROXENO')),
                                          DataCell(Text('01-05-2022')),
                                        ],
                                      ),

                                    ],
                                    columnSpacing: 32,
                                    horizontalMargin: 0,
                                    headingRowHeight: 24,
                                    dataRowHeight: 28,
                                  ),
                                  SizedBox(height: 16,),
                                  InkWell(
                                      onTap: () {

                                      },
                                      child: Text(
                                        AppTranslations.of(context)!.text("see_more"),
                                        style: const TextStyle(color: AppColors.orange),
                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: 16,)
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

