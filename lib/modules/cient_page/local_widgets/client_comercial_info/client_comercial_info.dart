import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
class ClientComercialInfo extends StatelessWidget {
  late Client client;


  ClientComercialInfo(this.client);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTitle(
          title: AppTranslations.of(context)!.text("commercial_data"),
          actionIcon: Icons.edit,
          fontColor: AppColors.blue,
          iconColor: AppColors.blue,
        ),
        CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInfoField(
                    label:AppTranslations.of(context)!.text("sub_channel"),
                    value: "--"//client.subcanal,
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                          label: AppTranslations.of(context)!.text("discount_type"),
                          value: "--"//client.tipodescuento,
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("condition"),
                        value: "--",
                      ),
                    )
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

  prevExpandInfo(BuildContext context){
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("commercial_data"),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: AppColors.cardBackground.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInfoField(
                    label:AppTranslations.of(context)!.text("sub_channel"),
                    value: "--"//client.subcanal,
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                          label: AppTranslations.of(context)!.text("discount_type"),
                          value: "--"//client.tipodescuento,
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("condition"),
                        value: "--",
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
                        value: client.diavisita1,
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("visit_day") + "2",
                        value: client.diavisita2,
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
                        value: client.representantelegal,
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: AppTranslations.of(context)!.text("dni"),
                        value: client.dni,
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
                          value: ""//client.aniversario,
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label:AppTranslations.of(context)!.text("phone_number"),
                        value: client.telefono,
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
