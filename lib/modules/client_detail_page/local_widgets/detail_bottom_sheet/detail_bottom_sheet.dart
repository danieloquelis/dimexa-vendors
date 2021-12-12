
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_info_field/custom_info_field.dart';
import 'package:dimexa_vendors/modules/client_detail_page/local_widgets/address_item/address_item.dart';
import 'package:dimexa_vendors/modules/client_detail_page/local_widgets/contact_item/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class DetailBottomSheet {
  Widget? child;
  double? height;
  Client client;

  Widget showOnlyWidget() {
    return child ?? Container();
  }
  Widget show() {
    return child != null? Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2,),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              child: Container(
                color: Colors.grey,
                width: 80,
                height: 6,
              ),
            ),
            const SizedBox(height: 24,),
            child!,
          ],
        )
    ): Container();
  }

  DetailBottomSheet.generalInfo({
    required BuildContext context,
    required this.client,
    required this.height
  }) {
    child = Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("code"),
                    value: StringUtils.checkNullOrEmpty(client.clienteid),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("ruc"),
                    value: StringUtils.checkNullOrEmpty(client.ruc),
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label: AppTranslations.of(context)!.text("social_reason"),
              value: StringUtils.checkNullOrEmpty(client.razonsocial),
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label:AppTranslations.of(context)!.text("commercial_name"),
              value: StringUtils.checkNullOrEmpty(client.nombrecomercial),
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("client_status"),
                      value: CollectionUtils.isNotNullNorEmpty(client.clientStatus) ?
                        StringUtils.checkNullOrEmpty(client.clientStatus.first.nombre) : "",
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("diremid_status"),
                      value: CollectionUtils.isNotNullNorEmpty(client.diremidStatus) ?
                      StringUtils.checkNullOrEmpty(client.diremidStatus.first.nombre) : ""
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label:AppTranslations.of(context)!.text("address"),
              value: client.nombrecomercial,
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label:AppTranslations.of(context)!.text("ubigeo"),
              value: CollectionUtils.isNotNullNorEmpty(client.ubigee) ?
              StringUtils.checkNullOrEmpty(client.ubigee.first.nombre) : "",
            ),
          ],
        )
    );
  }

  DetailBottomSheet.commercialInfo({
    required BuildContext context,
    required this.client,
    required this.height
  }) {
    child = Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInfoField(
                label:AppTranslations.of(context)!.text("sub_channel"),
                value: CollectionUtils.isNotNullNorEmpty(client.subChannel) ?
                StringUtils.checkNullOrEmpty(client.subChannel.first.nombre) : ""
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("discount_type"),
                      value: CollectionUtils.isNotNullNorEmpty(client.discountType) ?
                      StringUtils.checkNullOrEmpty(client.discountType.first.nombre) : ""
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
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("visit_day") + "1",
                    value: StringUtils.checkNullOrEmpty(client.diavisita1),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("visit_day") + "2",
                    value: StringUtils.checkNullOrEmpty(client.diavisita2),
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
                    value: StringUtils.checkNullOrEmpty(client.representantelegal),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("dni"),
                    value: StringUtils.checkNullOrEmpty(client.dni),
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
                      value: DateTimeUtil.dateTimeToString(client.aniversario),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label:AppTranslations.of(context)!.text("phone_number"),
                    value: StringUtils.checkNullOrEmpty(client.telefono),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }

  DetailBottomSheet.contacts({
    required BuildContext context,
    required this.client,
    required this.height
  }) {
    child = CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.3,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: false,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          ContactItem(),
          ContactItem()
        ]
    );
  }

  DetailBottomSheet.adresses({
    required BuildContext context,
    required this.client,
    required this.height
  }) {
    child = CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.8,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: false,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          AddressItem(),
          AddressItem(),
        ]
    );
  }
}