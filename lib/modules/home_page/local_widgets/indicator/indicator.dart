import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  String? title;
  String? value;


  Indicator({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title != null ? title! : "--"),
        Text(value != null ? value! : "--", style: TextStyle(color: AppColors.blue, fontWeight: FontWeight.w700),)
      ],
    );
  }
}
