import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/pages/clients/client_details/client_information/client_information.dart';
import 'package:dimexa_vendors/ui/pages/clients/client_details/client_operations/client_operations.dart';
import 'package:dimexa_vendors/ui/pages/clients/clients_controller.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ClientDetails extends StatefulWidget {
  const ClientDetails({Key? key}) : super(key: key);

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
            onPressed: (){},
          ),
          title: Text('Detalle de cliente'),
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
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                backgroundColor: AppColors.basePage,
                appBar: TabBar(
                  labelColor: AppColors.gray,
                  automaticIndicatorColorAdjustment: false,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0,color: AppColors.green),
                    insets: EdgeInsets.symmetric(horizontal:32.0),
                  ),
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(AppTranslations.of(context)!.text("information")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(AppTranslations.of(context)!.text("operations")),
                    ),
                  ],
                ),
                body: TabBarView(
                  children: [
                    ClientInformation(),
                    ClientOperations()
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
