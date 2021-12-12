import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

DataColumn TableHeader ({required String label}) {
  return DataColumn(
      label: Text(
        label, style: TextStyle(color: AppColors.greyLight),
      )
  );
}
