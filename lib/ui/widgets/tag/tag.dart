import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  String? label;
  Color? borderColor;
  double? fontSize;
  Function? onClick;

  Tag({
    Key? key,
    this.label = "--",
    this.borderColor = AppColors.green,
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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Text(label!, style: TextStyle(fontSize: fontSize)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            border: Border.all(color: borderColor!)
        ),
      ),
    );
  }
}
