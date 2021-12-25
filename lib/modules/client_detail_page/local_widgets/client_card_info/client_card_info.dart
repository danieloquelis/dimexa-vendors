import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/global_widgets/custom_card/custom_card.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientCardInfo extends StatelessWidget {
  BuildContext context;
  Client? client;
  Widget? child;
  Function? onClickSeeMore;
  String? title;
  bool isEditable = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTitle(
          title: title!,
          actionIcon: isEditable ? Icons.edit : null,
          fontColor: AppColors.blue,
          iconColor: AppColors.blue,
        ),
        CustomCard(
            child: child!
        ),
      ],
    );
  }

  ClientCardInfo.generalInfo({Key? key,
    required this.context,
    required this.title,
    required this.client,
    required this.onClickSeeMore,
  }) : super(key: key) {
    isEditable = false;
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("code"),
                value: StringUtils.checkNullOrEmpty(client!.clienteid),
              ),
            ),
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("ruc"),
                value: StringUtils.checkNullOrEmpty(client!.ruc),
              ),
            )

          ],
        ),
        const Divider(
          thickness: 1,
        ),
        CustomInfoField(
          label: AppTranslations.of(context)!.text("social_reason"),
          value: StringUtils.checkNullOrEmpty(client!.razonsocial),
        ),
        const SizedBox(height: 18,),
        InkWell(
          onTap: () {
            if (onClickSeeMore != null) {
              onClickSeeMore!();
            }
          },
          child: Text(
            AppTranslations.of(context)!.text("see_more"),
            style: const TextStyle(color: AppColors.orange),
          )
        )
      ],
    );
  }

  ClientCardInfo.commercialData({Key? key,
    required this.context,
    required this.client,
    required this.title,
    required this.onClickSeeMore
  }) : super(key: key) {
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomInfoField(
            label:AppTranslations.of(context)!.text("sub_channel"),
            value: StringUtils.checkNullOrEmpty(client!.subcanal),
        ),
        const Divider(
          thickness: 1,
        ),
        Row(
          children: [
            Flexible(
              child: CustomInfoField(
                  label: AppTranslations.of(context)!.text("discount_type"),
                  value: StringUtils.checkNullOrEmpty(client!.tipodescuento)
              ),
            ),
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("condition"),
                value: "",
              ),
            )
          ],
        ),
        SizedBox(height: 18,),
        InkWell(
          onTap: () {
            if (onClickSeeMore != null) {
              onClickSeeMore!();
            }
          },
          child: Text(
            AppTranslations.of(context)!.text("see_more"),
            style: const TextStyle(color: AppColors.orange),
          )
        )
      ],
    );
  }

  ClientCardInfo.contacts({Key? key,
    required this.context,
    required this.client,
    required this.title,
    required this.onClickSeeMore,
    required List<Contact>? contacts
  }) {
    child = CollectionUtils.isNotNullNorEmpty(contacts) ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("name"),
                value: StringUtils.checkNullOrEmpty(contacts!.first.nombre),
              ),
            ),
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("phone"),
                value: StringUtils.checkNullOrEmpty(contacts.first.telefono),
              ),
            )

          ],
        ),
        const Divider(
          thickness: 1,
        ),
        CustomInfoField(
          label: AppTranslations.of(context)!.text("role"),
          value: StringUtils.checkNullOrEmpty(contacts.first.tipocontacto),
        ),
        SizedBox(height: 18,),
        InkWell(
            onTap: () {
              if (onClickSeeMore != null) {
                onClickSeeMore!();
              }
            },
            child: Text('Ver más', style: TextStyle(color: AppColors.orange),)
        )
      ],
    ): const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('No se encontraron contactos registrados'),
      ),
    );
  }

  ClientCardInfo.addresses({Key? key,
    required this.context,
    required this.client,
    required this.title,
    required this.onClickSeeMore,
    required Function seeMap
  }) {
    isEditable = false;
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringUtils.checkNullOrEmpty(client!.clientedirecciondireccion)
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    StringUtils.checkNullOrEmpty(client!.clientedireccionubigeoid)
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                seeMap();
              },
              icon: const Icon(Icons.location_on, color: AppColors.blue,),
            ),
          ],
        ),

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
        const SizedBox(height: 18,),
        InkWell(
            onTap: () {
              if (onClickSeeMore != null) {
                onClickSeeMore!();
              }
            },
            child: const Text('Ver más', style: TextStyle(color: AppColors.orange),)
        )
      ],
    );
  }
}
