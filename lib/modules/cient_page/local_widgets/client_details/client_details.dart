import 'package:dimexa_vendors/core/theme/dimexa_icons/dimexa_icons.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/modules/cient_page/clients_controller.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_addresses/client_addresses.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_comercial_info/client_comercial_info.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_contacts/client_contacts.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_general_info/client_general_info.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_statistics/client_statistics.dart';
import 'package:dimexa_vendors/global_widgets/card_title/card_title.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ClientDetails extends StatefulWidget {
  @override
  _ClientDetailsState createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetails> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientsController>(
      init: ClientsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          title: Text(AppTranslations.of(context)!.text("client_details")),
          actions: [
            Switch(
              value: false,
              onChanged: (value){},
              activeColor: AppColors.green,
            )
          ],
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            color: AppColors.basePage
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.bookmark_border),
                          label: Text(AppTranslations.of(context)!.text("order")),
                        ),
                        const SizedBox(width: 8,),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(DimexaIcons.collect, size: 20,),
                          label: Text(AppTranslations.of(context)!.text("collect")),
                        )
                      ],
                    ),
                  ),
                  CardTitle(
                    title: "Indicadores",
                  ),
                  ClientStatistics(_.selectedClient),
                  const SizedBox(height: 16,),
                  CardTitle(
                    title: AppTranslations.of(context)!.text("information"),
                    actionIcon: Icons.edit,
                  ),
                  ClientGeneralInfo(_.selectedClient),
                  ClientComercialInfo(_.selectedClient),
                  ClientContacts(),
                  ClientAddresses(),
                ],
              ),
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add, size: 28,),
          onPressed: () {
            showMoreActions();
          },
        ),
      ),
    );
  }

  Future<dynamic> showMoreActions() {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          actions: [
            modalActionItem(
              icon: DimexaIcons.documents,
              name: AppTranslations.of(context)!.text("documents"),
              iconSize: 22
            ),
            modalActionItem(
              icon: DimexaIcons.letters,
              name: AppTranslations.of(context)!.text("protested_letters")
            ),
            modalActionItem(
              icon: DimexaIcons.historical,
              name: AppTranslations.of(context)!.text("historical")
            ),
            modalActionItem(
              icon: DimexaIcons.competence,
              name: AppTranslations.of(context)!.text("competence")
            ),
            modalActionItem(
              icon: DimexaIcons.complains,
              name: AppTranslations.of(context)!.text("complains_redeems")
            ),
            modalActionItem(
              icon: DimexaIcons.delivery,
              name: AppTranslations.of(context)!.text("deliveries"),
              iconSize: 18
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text(
              AppTranslations.of(context)!.text("cancel"),
              style: const TextStyle(
                  fontSize: 16
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
    );
  }

  Widget modalActionItem({String? name, IconData? icon, double iconSize = 20, Function? onClick}) {
    return CupertinoActionSheetAction(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible: icon != null,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                icon,
                color: AppColors.gray,
                size: iconSize,
              ),
            ),
          ),
          const SizedBox(width: 24,),
          Text(
            name!,
            style: const TextStyle(
                color: AppColors.gray,
                fontSize: 14
            ),
            textAlign: TextAlign.left,
          ),

        ],
      ),
      onPressed: () {
        if (onClick != null) {
          onClick();
        }
        Navigator.pop(context);
      },
    );
  }
}
