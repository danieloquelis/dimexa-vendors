import 'package:dimexa_vendors/core/utils/date_time_util/date_time_util.dart';
import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/base_appbar/base_appbar.dart';
import 'package:dimexa_vendors/global_widgets/cupertino_bsheet_item/cupertino_bsheet_item.dart';
import 'package:dimexa_vendors/modules/client_page/client_controller.dart';
import 'package:dimexa_vendors/modules/client_page/local_widgets/client_list_item/client_list_item.dart';
import 'package:dimexa_vendors/global_widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/state_manager.dart';

class ClientPage extends StatefulWidget {

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(
      init: ClientController(),
      builder: (_) => Scaffold(
        appBar: BaseAppBar(
          title: AppTranslations.of(context)!.text('clients'),
          lastUpdate: DateTimeUtil.dateTimeToText(_.lastSyncDate),
          syncOnDemand: _.syncOnDemand,
          openDrawer: _.globalController.openDrawer
        ).widget(),
        body: Container(
          decoration: const BoxDecoration(
            color: AppColors.basePage,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SearchBar(
                  placeHolder: _.filterType.displayName,
                  onChange: (String value) {
                    _.setSearchText(value);
                  },
                  onChangeFilter: () {
                    showFilterOptions(_);
                  },
                  onClearSearch: () {
                    _.setSearchText("");
                  },
                ),
                const SizedBox(height: 24,),
                _.loading ? const Expanded(
                  child: Center(
                    child: SpinKitChasingDots(
                      color: AppColors.green,
                    ),
                  ),
                ):
                _.clients.isEmpty?
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.search, size: 128, color: AppColors.gray,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Text('Escribe en la barra de b??squeda para encontrar a tus clientes.', textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                )
                :
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: _.clients.map((client) {
                      return Column(
                        children: [
                          ClientListItem(
                            client: client,
                            onClick: (client) {
                              _.onSelectClient(client);
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Divider(thickness: 2,),
                          )
                        ],
                      );
                    }).toList()
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  Future<dynamic>? showFilterOptions(ClientController _) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(
              AppTranslations.of(context)!.text("filter_of_searching"),
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.gray
            ),
          ),
          actions: SearchClientFilter.values.map((filterType) {
            return CupertinoBSheetItem(
              label: filterType.displayName,
              onClick: () {
                _.setFilterType(filterType);
                Navigator.pop(context);
              },
              isSelected: false,
            );
          }).toList(),
        )
    );
  }
}
