import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardTitle(
          title: title!,
          actionIcon: Icons.edit,
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
    required this.onClickSeeMore
  }) : super(key: key) {
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("code"),
                value: '10025',
              ),
            ),
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("ruc"),
                value: '10026103666',
              ),
            )

          ],
        ),
        const Divider(
          thickness: 1,
        ),
        CustomInfoField(
          label: AppTranslations.of(context)!.text("social_reason"),
          value: 'client.razonsocial',
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
        InkWell(
            onTap: () {
              if (onClickSeeMore != null) {
                onClickSeeMore!();
              }
            },
            child: Text('Ver más', style: TextStyle(color: AppColors.orange),)
        )
      ],
    );
  }

  ClientCardInfo.contacts({Key? key,
    required this.context,
    required this.client,
    required this.title,
    required this.onClickSeeMore
  }) {
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("code"),
                value: '10025',
              ),
            ),
            Flexible(
              child: CustomInfoField(
                label: AppTranslations.of(context)!.text("ruc"),
                value: '10026103666',
              ),
            )

          ],
        ),
        const Divider(
          thickness: 1,
        ),
        CustomInfoField(
          label: AppTranslations.of(context)!.text("social_reason"),
          value: 'client.razonsocial',
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
    );
  }

  ClientCardInfo.addresses({Key? key,
    required this.context,
    required this.client,
    required this.title,
    required this.onClickSeeMore,
    required Function seeMap
  }) {
    child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Av. Canta Callao Mz Q lt 22 Urb. Libertad'),
                SizedBox(height: 4,),
                Text('Los Olivos - Lima - Lima'),
              ],
            ),
            Flexible(
              child: IconButton(
                onPressed: () {
                  seeMap();
                },
                icon: Icon(Icons.location_on, color: AppColors.blue,),
              ),
            )
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
    );
  }
}
