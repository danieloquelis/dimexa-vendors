import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/global_widgets/base_bottom_sheet/base_bottom_sheet.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/table_header/table_header.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/custom_data_table/custom_data_table.dart';
import 'package:flutter/material.dart';

class DetailBottomSheet extends StatelessWidget {
  Widget? child;

  DetailBottomSheet.priceScale() {
    child = BaseBottomSheet(
      horizontalPadding: 6,
      horizontalMargin: 0,
      child: Column(
        children: [
          CardTitle(
            title: "Precio base",
            fontColor: AppColors.blue,
          ),
          CustomDataTable(
            columns: Strings.basePrice.map((header){
              return TableHeader(label: header);
            }).toList(),
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Apronax 275mg x 8 tab')),
                  DataCell(Text('10.29')),
                ],
              )
            ],
            //columnSpacing: 40,
          ),
          SizedBox(height: 8,),
          CardTitle(
            title: "Descuento",
            fontColor: AppColors.blue,
          ),
          CustomDataTable(
            columns: Strings.discountHeaders.map((header){
              return TableHeader(label: header);
            }).toList(),
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('10.29')),
                  DataCell(Text('10.29')),
                  DataCell(Text('10.29')),
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
                  DataCell(Text('10.29')),
                  DataCell(Text('10.29')),
                  DataCell(Text('10.29')),
                  DataCell(Text('10.29'))
                ],
              )
            ],
            columnSpacing: 9,
          ),
          SizedBox(height: 8,),
          CardTitle(
            title: "Precios - escala",
            fontColor: AppColors.blue,
          ),
          CustomDataTable(
            columns: Strings.priceScaleHeaders.map((header){
              return TableHeader(label: header);
            }).toList(),
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
            columnSpacing: 25,
          )
        ],
      )
    );
  }

  DetailBottomSheet.bonification() {
    child = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          bonificationItem(),
          bonificationItem()
        ],
      ),
    );
  }

  Widget bonificationItem() {
    return BaseBottomSheet(
      child: Column(
        children: [
          CardTitle(
            title: "Bonificación",
            fontColor: AppColors.blue,
          ),
          CustomDataTable(
            columns: Strings.basePrice.map((header){
              return TableHeader(label: header);
            }).toList(),
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Apronax 275mg x 8 tab')),
                  DataCell(Text('10.29')),
                ],
              )
            ],
            //columnSpacing: 40,
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return child!;
  }
}
