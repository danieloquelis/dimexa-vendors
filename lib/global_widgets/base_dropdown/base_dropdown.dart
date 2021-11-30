import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class BaseDropdown extends StatelessWidget {
  String? label;
  Color? borderColor;
  double? fontSize;
  Function? onClick;
  Color? backgroundColor;

  BaseDropdown({
    Key? key,
    this.label = "--",
    this.borderColor = AppColors.green,
    this.backgroundColor = Colors.white,
    this.fontSize = 12,
    this.onClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onClick != null) {
          onClick!();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label!, style: TextStyle(fontSize: fontSize)),
            const Icon(Icons.arrow_drop_down)
          ],
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            border: Border.all(color: borderColor!)
        ),
      ),
    );
  }
}
