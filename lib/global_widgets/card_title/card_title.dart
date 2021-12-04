import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  String? title;
  IconData? actionIcon;
  Function? onClick;
  Color? iconColor;
  Color? fontColor;


  CardTitle(
      {this.title = "--",
      this.actionIcon,
      this.onClick,
      this.iconColor = AppColors.gray,
        this.fontColor = AppColors.gray,

      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              color: fontColor
            ),
          ),
          Visibility(
            visible: actionIcon != null,
            child: InkWell(
              onTap: () {
                if (onClick != null) {
                  onClick!();
                }
              },
              child: Icon(
                actionIcon,
                color: iconColor,
              ),
            )
          )
        ],
      ),
    );
  }
}
