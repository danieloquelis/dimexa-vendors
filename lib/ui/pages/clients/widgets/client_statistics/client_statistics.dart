import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class ClientStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('330K', style: TextStyle(color: AppColors.blue, fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Línea de crédito', style: TextStyle(fontSize: 12),)
              ],
            ),
            Column(
              children: [
                Text('330K', style: TextStyle(color: AppColors.red, fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Deuda', style: TextStyle(fontSize: 12),)
              ],
            ),
            Column(
              children: [
                Text('330K', style: TextStyle(color: AppColors.green, fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Disponible', style: TextStyle(fontSize: 12),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
