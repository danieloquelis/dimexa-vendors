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
            'Inversiones maticorena',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Crédito', style: TextStyle(color: Colors.white),),
                  Text('S/. 0.00', style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Text('Deuda', style: TextStyle(color: Colors.white)),
                  Text('S/. 0.00', style: TextStyle(color: Colors.white))
                ],
              ),
              Column(
                children: [
                  Text('Disponible', style: TextStyle(color: Colors.white)),
                  Text('S/. 0.00', style: TextStyle(color: Colors.white))
                ],
              )
            ],
          ),
         SizedBox(height: 16,),
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
