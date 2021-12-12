import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/table_header/table_header.dart';
import 'package:dimexa_vendors/modules/product_detail_page/local_widgets/custom_data_table/custom_data_table.dart';
import 'package:flutter/material.dart';

class ProductCardInfo extends StatelessWidget {
  late String title;
  late Widget child;

  ProductCardInfo.priceScale() {
    title = "Precios - escalas";
    child = CustomDataTable(
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
      columnSpacing: 20,
    );
  }

  ProductCardInfo.bonification() {
    title = "Bonificación";
    child = CustomDataTable(
      columns: Strings.bonificationHeaders.map((header){
        return TableHeader(label: header);
      }).toList(),
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
    );
  }

  ProductCardInfo.productInfo() {
    title = "Información de producto";
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDataTable(
            columns: Strings.productInfoHeaders.map((header){
              return TableHeader(label: header);
            }).toList(),
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

        ),
        SizedBox(height: 16,),
        CustomDataTable(
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
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardTitle(
          title: title,
          fontColor: AppColors.blue,
        ),
        CustomCard(
            padding: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                child,
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
      ],
    );
  }
}
