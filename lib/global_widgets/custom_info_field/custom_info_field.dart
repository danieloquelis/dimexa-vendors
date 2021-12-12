import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomInfoField extends StatelessWidget {

  String label;
  String? value;
  Widget? widgetValue;
  IconData? iconAction;
  Function? onClickAction;


  CustomInfoField({
    required this.label,
    this.value,
    this.iconAction,
    this.onClickAction,
    this.widgetValue
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
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: AppColors.greyLight),),
              const SizedBox(height: 2,),
              widgetValue != null ?
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: widgetValue!,
              ) :
              Text(value ?? "--", style: TextStyle(fontSize: 16, color: value == null ? AppColors.orange : AppColors.gray),),
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
