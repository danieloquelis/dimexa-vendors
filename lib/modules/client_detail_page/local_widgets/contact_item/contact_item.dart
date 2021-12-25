import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  Contact contact;

  ContactItem({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top:Radius.circular(16))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInfoField(
              label: AppTranslations.of(context)!.text("position"),
              value: StringUtils.checkNullOrEmpty(contact.tipocontacto),
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label: AppTranslations.of(context)!.text("full_name"),
              value: StringUtils.checkNullOrEmpty(contact.nombre),
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("gender"),
                    value: "Masculino",
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("civil_status"),
                    value: "Soltero",
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
                    value: StringUtils.checkNullOrEmpty(contact.fechanacimiento),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("phone_number"),
                    value: StringUtils.checkNullOrEmpty(contact.telefono),
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label: AppTranslations.of(context)!.text("email"),
              value: StringUtils.checkNullOrEmpty(contact.correo),
            ),
          ],
        )
    );
  }
}
