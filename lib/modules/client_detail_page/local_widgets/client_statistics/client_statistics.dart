import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientStatistics extends StatelessWidget {

  Client? client;
  String? lastUpdate;

  ClientStatistics({
    required this.client,
    this.lastUpdate
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringUtils.isNotNullNorEmpty(client!.nombrecomercial) ?
            StringUtils.checkNullOrEmpty(client!.nombrecomercial): StringUtils.checkNullOrEmpty(client!.razonsocial),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(AppTranslations.of(context)!.text("credit"), style: TextStyle(color: Colors.white),),
                  Text(
                      StringUtils.checkNullOrEmpty(client!.lineacredito),
                      style: const TextStyle(color: Colors.white)
                  )
                ],
              ),
              Column(
                children: [
                  Text(AppTranslations.of(context)!.text("debt"), style: TextStyle(color: Colors.white)),
                  Text(
                      StringUtils.checkNullOrEmpty(client!.deuda),
                      style: const TextStyle(color: Colors.white)
                  )
                ],
              ),
              Column(
                children: [
                  Text(AppTranslations.of(context)!.text("available"), style: TextStyle(color: Colors.white)),
                  Text(
                      StringUtils.checkNullOrEmpty(client!.lineadisponible),
                      style: const TextStyle(color: Colors.white)
                  )
                ],
              )
            ],
          ),
         const SizedBox(height: 16,),
          Visibility(
            visible: StringUtils.isNotNullNorEmpty(lastUpdate),
            child: Text(
                'Última sincronización ${lastUpdate!}',
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
