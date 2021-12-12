import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';

class DescriptionCell extends StatelessWidget {
  const DescriptionCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
