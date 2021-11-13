import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientComercialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("commercial_data"),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInfoField(
                  label:AppTranslations.of(context)!.text("sub_channel"),
                  value: "Clientes A",
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("discount_type"),
                        value: "Normal",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("condition"),
                        value: "F6-Letra",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("visit_day") + "1",
                        value: "Lunes",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("visit_day") + "2",
                        value: "Martes",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("legal_represent"),
                        value: "Luis Leon",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("dni"),
                        value: "72402491",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("anniversary"),
                        value: "21 de enero",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label:AppTranslations.of(context)!.text("phone_number"),
                        value: "+51960943368",
                      ),
                    )
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
