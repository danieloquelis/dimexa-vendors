import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientStatistics extends StatelessWidget {

  late Client client;


  ClientStatistics(this.client);

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
                Text(client.lineacredito!, style: TextStyle(color: AppColors.blue, fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  AppTranslations.of(context)!.text("credit_line"),
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                Text(client.deuda!, style: TextStyle(color: AppColors.red, fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  AppTranslations.of(context)!.text("debt"),
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            Column(
              children: [
                Text(client.lineadisponible!, style: TextStyle(color: AppColors.green, fontWeight: FontWeight.bold, fontSize: 18)),
                Text(
                  AppTranslations.of(context)!.text("available"),
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
