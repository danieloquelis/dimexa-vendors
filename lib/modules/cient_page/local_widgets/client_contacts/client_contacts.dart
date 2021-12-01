import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
class ClientContacts extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("contacts"),
      child: Column(
        children: [
          contactItem(
            context: context,
            position: "Gerente general",
            fullName: "Daniel Oquelis Leon",
            gender: "Masculino",
            civilStatus: "Soltero",
            birthday: "28/11/1995",
            phoneNumber: "+51960943368",
            email: "daniel.oquelis@gmail.com"
          ),
          const SizedBox(height: 8,),
          contactItem(
              context: context,
              position: "Gerente general",
              fullName: "Daniel Oquelis Leon",
              gender: "Masculino",
              civilStatus: "Soltero",
              birthday: "28/11/1995",
              phoneNumber: "+51960943368",
              email: "daniel.oquelis@gmail.com"
          )
        ],
      )
    );
  }

  Widget contactItem({
      BuildContext? context,
      String? position,
      String? fullName,
      String? gender,
      String? civilStatus,
      String? birthday,
      String? phoneNumber,
      String? email
  }) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context!).size.width,
          color: AppColors.cardBackground.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomInfoField(
                label: AppTranslations.of(context)!.text("position"),
                value: position!,
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: AppTranslations.of(context)!.text("full_name"),
                value: fullName!,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("gender"),
                      value: gender!,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("civil_status"),
                      value: civilStatus!,
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
                      label: AppTranslations.of(context)!.text("birthday"),
                      value: birthday!,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("phone_number"),
                      value: phoneNumber!,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: AppTranslations.of(context)!.text("email"),
                value: email!,
              ),
            ],
          )
      ),
    );
  }
}
