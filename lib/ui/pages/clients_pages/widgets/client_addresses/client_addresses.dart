import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/ui/widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientAddresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("addresses"),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
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
