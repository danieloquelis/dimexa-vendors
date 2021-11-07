import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  String? label;
  Color? borderColor;


  Tag({Key? key, this.label = "--", this.borderColor = AppColors.green}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(label!, style: const TextStyle(fontSize: 12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          border: Border.all(color: borderColor!)
      ),
    );
  }
}
