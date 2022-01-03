import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';

class DescriptionCell extends StatelessWidget {
  Product product;


  DescriptionCell({required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringUtils.checkNullOrEmpty(product.producto),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6,),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: product.vencimientocorto!,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Tag(
                      label: "VC",
                      backgroundColor: AppColors.green,
                      fontColor: Colors.white,
                    ),
                  ),
                ),
                Visibility(
                  visible: product.escalas! > 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Tag(
                      label: '${product.escalas!} ES',
                      backgroundColor: AppColors.blue,
                      fontColor: Colors.white,
                    ),
                  ),
                ),
                Visibility(
                  visible: product.bonificaciones! > 0,
                  child: Tag(
                    label: '${product.bonificaciones!} BF',
                    backgroundColor: AppColors.orange,
                    fontColor: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      width: 128,
    );
  }
}
