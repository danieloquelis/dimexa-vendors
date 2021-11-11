import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/requests/search.dart';
import 'package:dimexa_vendors/ui/pages/clients_pages/clients_page_controller.dart';
import 'package:dimexa_vendors/ui/pages/clients_pages/widgets/client_list_item/client_list_item.dart';
import 'package:dimexa_vendors/ui/widgets/cupertino_sheet_item/cupertino_sheet_item.dart';
import 'package:dimexa_vendors/ui/widgets/search_bar/search_bar.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientsPageController>(
      init: ClientsPageController(),
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
                  onChange: (String value) {},
                  onChangeFilter: () {
                    showFilterOptions();
                  },
                ),
                const SizedBox(height: 24,),
                ClientListItem(),
              ],
            ),
          ),
        ),
      )
    );
  }

  Future<dynamic> showFilterOptions() {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
          title: Text(AppTranslations.of(context)!.text("filter_of_searching")),
          actions: SearchClientFilter.values.map((filterType) {
            return CupertinoSheetItem(
              label: filterType.displayName,
              onClick: () {},
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