import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientGeneralInfo extends StatelessWidget {
  late Client client;


  ClientGeneralInfo(this.client);

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
                      value: client.ruc,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("code"),
                      value: client.sid,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: AppTranslations.of(context)!.text("social_reason"),
                value: client.razonsocial,
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label:AppTranslations.of(context)!.text("commercial_name"),
                value: client.nombrecomercial,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("client_status"),
                      value: client.estadocliente,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("diremid_status"),
                      value: client.estadodiremid,
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
