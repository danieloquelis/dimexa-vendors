import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';

class ClientAddresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTitle(
          title: '${AppTranslations.of(context)!.text("addresses")} (3)',
          actionIcon: Icons.edit,
          fontColor: AppColors.blue,
          iconColor: AppColors.blue,
        ),
        CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Av. Canta Callao Mz Q lt 22 Urb. Libertad'),
                SizedBox(height: 4,),
                Text('Los Olivos - Lima - Lima'),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Tag(
                      borderColor: Colors.transparent,
                      backgroundColor: AppColors.tagBackground,
                      label: 'Principal',
                    ),
                    SizedBox(width: 8,),
                    Tag(
                      borderColor: Colors.transparent,
                      backgroundColor: AppColors.tagBackground,
                      label: 'Oficina',
                    ),
                  ],
                ),
                SizedBox(height: 18,),
                Text('Ver más', style: TextStyle(color: AppColors.orange),)
              ],
            )
        ),
      ],
    );
  }

  prevInfo(BuildContext context) {
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("addresses"),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: AppColors.cardBackground.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInfoField(
                  label: AppTranslations.of(context)!.text("principal_address"),
                  value: "Av. Cantacalle Oz. 21, Los olivos",
                ),
                const Divider(
                  thickness: 1,
                ),
                CustomInfoField(
                  label: AppTranslations.of(context)!.text("auxiliar_address") + " 1",
                  value: "Pjse. Agua marina 134, Santaigo de surco",
                ),
              ],
            )
        ),
      ),
    );
  }
}
