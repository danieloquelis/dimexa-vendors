import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/ui/widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientGeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: AppTranslations.of(context)!.text("general_data"),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("ruc"),
                      value: "10026103636",
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("code"),
                      value: "10026103636",
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: AppTranslations.of(context)!.text("social_reason"),
                value: "Axeso SAC",
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label:AppTranslations.of(context)!.text("commercial_name"),
                value: "Farmacia mi luchito",
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("client_status"),
                      value: "Normal",
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("diremid_status"),
                      value: "Activo",
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
