import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/pages/clients/clients_controller.dart';
import 'package:dimexa_vendors/ui/pages/clients/widgets/client_addresses/client_addresses.dart';
import 'package:dimexa_vendors/ui/pages/clients/widgets/client_comercial_info/client_comercial_info.dart';
import 'package:dimexa_vendors/ui/pages/clients/widgets/client_contacts/client_contacts.dart';
import 'package:dimexa_vendors/ui/pages/clients/widgets/client_general_info/client_general_info.dart';
import 'package:dimexa_vendors/ui/pages/clients/widgets/client_statistics/client_statistics.dart';
import 'package:dimexa_vendors/ui/widgets/tag/tag.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Estadísticas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  ClientStatistics(),
                  const SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Información', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Icon(Icons.edit, color: AppColors.gray,)
                      ],
                    ),
                  ),
                  ClientGeneralInfo(),
                  ClientComercialInfo(),
                  ClientContacts(),
                  ClientAddresses(),
                ],
              ),
            ),
          )
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
              name: "Gestionar devoluciones"
            ),
            modalActionItem(
                name: "Letras protestadas"
            ),
            modalActionItem(
                name: "Entregas"
            ),
            modalActionItem(
                name: "Cobranzas"
            ),
            modalActionItem(
                name: "Competidores"
            ),
            modalActionItem(
                name: "Incidencias"
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

  Widget modalActionItem({String? name, Function? onClick}) {
    return CupertinoActionSheetAction(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 16,),
          Icon(
              Icons.data_usage,
            color: AppColors.gray,
          ),
          SizedBox(width: 24,),
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
