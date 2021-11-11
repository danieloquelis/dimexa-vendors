import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomInfoField extends StatelessWidget {

  String? label;
  String? value;
  IconData? iconAction;
  Function? onClickAction;


  CustomInfoField({
    this.label = "--",
    this.value,
    this.iconAction,
    this.onClickAction
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: AppColors.green),),
              const SizedBox(height: 2,),
              Text(value ?? "-- Completar --", style: TextStyle(fontSize: 16, color: value == null ? AppColors.orange : AppColors.gray),),
            ],
          ),
        ),
        Visibility(
          visible: onClickAction != null && iconAction != null,
          child: IconButton(
              onPressed: () => onClickAction,
              icon: Icon(iconAction, color: value == null ? AppColors.orange : AppColors.gray,)
          ),
        )
      ],
    );
  }
}
