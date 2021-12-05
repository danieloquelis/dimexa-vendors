import 'package:dimexa_vendors/modules/client_details_page/client_details_controller.dart';
import 'package:dimexa_vendors/modules/client_details_page/local_widgets/client_card_info/client_card_info.dart';
import 'package:dimexa_vendors/modules/client_details_page/local_widgets/client_statistics/client_statistics.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/core/theme/dimexa_icons/dimexa_icons.dart';
import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class ClientDetailsPage extends StatefulWidget {
  @override
  _ClientDetailsPageState createState() => _ClientDetailsPageState();
}

class _ClientDetailsPageState extends State<ClientDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientDetailsController>(
      builder: (_) => Scaffold(
        appBar: BaseAppBar(
          back: _.onBack,
          syncOnDemand: () {
            _.onSyncClient();
          },
        ).widget(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClientStatistics(
              client: _.selectedClient,
              lastUpdate: DateTimeUtil.dateTimeToText(_.selectedClient.lastSync),
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                      color: AppColors.basePage
                  ),
                  child: content(_)
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget content(ClientDetailsController _) {
    return Column(
      children: [
        actionButtons(),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Column(
                  children: [
                    ClientCardInfo.generalInfo(
                      context: context,
                      title: AppTranslations.of(context)!.text("general_data"),
                      client: _.selectedClient,
                      onClickSeeMore: () => _.showGeneralInfoBottomSheet(),
                    ),
                    const SizedBox(height: 24,),
                    ClientCardInfo.commercialData(
                      context: context,
                      title: AppTranslations.of(context)!.text("commercial_data"),
                      client: _.selectedClient,
                      onClickSeeMore: () => _.showCommercialInfoBottomSheet(),
                    ),
                    const SizedBox(height: 24,),
                    ClientCardInfo.contacts(
                      context: context,
                      title: AppTranslations.of(context)!.text("contacts"),
                      client: _.selectedClient,
                      onClickSeeMore: () => _.showContactsBottomSheet(),
                    ),
                    const SizedBox(height: 24,),
                    ClientCardInfo.addresses(
                      context: context,
                      title: AppTranslations.of(context)!.text("addresses"),
                      client: _.selectedClient,
                      onClickSeeMore: () => _.showAddressesBottomSheet(),
                      seeMap: () => _.goToMapView(),
                    )
                  ],
                )
            ),
          ),
        ),
      ],
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
                color: AppColors.blue,
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

  Widget actionButtons() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tag(
            label: AppTranslations.of(context)!.text("order"),
            fontSize: 18,
            backgroundColor: AppColors.blue,
            borderColor:  AppColors.blue,
            fontColor: Colors.white,
          ),
          const SizedBox(width: 8,),
          Tag(
            label: AppTranslations.of(context)!.text("collect"),
            fontSize: 18,
            backgroundColor: AppColors.blue,
            borderColor:  AppColors.blue,
            fontColor: Colors.white,
          ),
          const SizedBox(width: 8,),
          Tag(
            label: 'Más...',
            fontSize: 18,
            backgroundColor: Colors.transparent,
            borderColor:  AppColors.blue,
            fontColor: AppColors.blue,
            onClick: () {
              showMoreActions();
            },
          ),
        ],
      ),
    );
  }
}
