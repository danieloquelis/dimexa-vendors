import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/cupertino_bsheet_item/cupertino_bsheet_item.dart';
import 'package:dimexa_vendors/modules/cient_page/clients_controller.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_list_item/client_list_item.dart';
import 'package:dimexa_vendors/global_widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/state_manager.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientsController>(
      init: ClientsController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: Text(AppTranslations.of(context)!.text('clients')),
          elevation: 0,
        ),
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
                  placeHolder: "Buscar por nombre comercial",
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
                _.loading ? const SpinKitChasingDots(
                  color: AppColors.green,
                ):
                    _.clients.isEmpty?
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search, size: 128, color: AppColors.gray,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 32),
                                child: Text('Escribe en la barra de búsqueda para encontrar a tus clientes.', textAlign: TextAlign.center,),
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

  Future<dynamic>? showFilterOptions(ClientsController _) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(AppTranslations.of(context)!.text("filter_of_searching")),
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
}
