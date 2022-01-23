import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  Widget child;
  double padding;


  CustomCard({
    required this.child,
    this.padding = 12
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.cardBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 16,
            offset: Offset(0, 8),
          )
        ]
      ),
      child: child,
    );
  }
}
