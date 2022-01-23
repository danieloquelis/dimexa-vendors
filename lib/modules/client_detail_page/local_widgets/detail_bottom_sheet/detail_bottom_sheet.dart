
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimexa_vendors/core/utils/collection_utils/collection_utils.dart';
import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/models/address/address.dart';
import 'package:dimexa_vendors/data/models/contact/contact.dart';
import 'package:dimexa_vendors/data/models/contact_media/contact_media.dart';
import 'package:dimexa_vendors/data/models/contact_role/contact_role.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_bottom_sheet/base_bottom_sheet.dart';
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
    return child != null? BaseBottomSheet(
      child: child!
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
                      value: StringUtils.checkNullOrEmpty(client.estadocliente)
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("diremid_status"),
                      value: StringUtils.checkNullOrEmpty(client.estadodiremid)
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label:AppTranslations.of(context)!.text("address"),
              value: StringUtils.checkNullOrEmpty(client.direccion),
            ),
            const Divider(
              thickness: 1,
            ),
            CustomInfoField(
              label:AppTranslations.of(context)!.text("ubigeo"),
              value: '${StringUtils.checkNullOrEmpty(client.distrito)}, ${StringUtils.checkNullOrEmpty(client.departamento)}'
            )
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
                value: StringUtils.checkNullOrEmpty(client.subcanal)
            ),
            const Divider(
              thickness: 1,
            ),
            Row(
              children: [
                Flexible(
                  child: CustomInfoField(
                      label: AppTranslations.of(context)!.text("discount_type"),
                      value: StringUtils.checkNullOrEmpty(client.tipodescuento)
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("condition"),
                    value: StringUtils.checkNullOrEmpty(client.condicionventa),
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
                    value: DateTimeUtil.getNameDay(client.dia1),
                  ),
                ),
                Flexible(
                  child: CustomInfoField(
                    label: AppTranslations.of(context)!.text("visit_day") + "2",
                    value:  DateTimeUtil.getNameDay(client.dia2),
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
                      value: StringUtils.checkNullOrEmpty(client.aniversario),
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
    required List<Contact> contacts,
    required List<ContactRole> contactRoles,
    required List<ContactMedia> contactMedias,
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
        items: contacts.map((contact) {
          return ContactItem(
            contact: contact,
            roles: contactRoles.where((role) => role.contactoid == contact.contactoid).toList(),
            contactMedia: contactMedias.firstWhere((media) => media.contactoid == contact.contactoid),
          );
        }).toList()
    );
  }

  DetailBottomSheet.adresses({
    required BuildContext context,
    required this.client,
    required List<Address> addresses,
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
        items: addresses.map((address) {
          return AddressItem(
            address: address,
          );
        }).toList()
    );
  }
}