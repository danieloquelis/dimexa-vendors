import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBSheetItem extends StatelessWidget {
  String? label;
  bool? isSelected;
  Function? onClick;

  CupertinoBSheetItem({Key? key, this.label, this.isSelected, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
      child: Row(
        children: [
          isSelected! ? const Icon(Icons.check, color: AppColors.green,) : const SizedBox(),
          Text(
              label!,
              style: const TextStyle(fontSize: 16)
          ),
          const SizedBox()
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      onPressed: () {onClick!();}
    );
  }
}
