import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientListItem extends StatelessWidget {

  Client? client;
  Function? onClick;
  ClientListItem({Key? key, this.client, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick!(client);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    client!.nombrecomercial!.isNotEmpty ? client!.nombrecomercial! : client!.razonsocial!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18, color: AppColors.blue
                    )
                ),
                Visibility(
                  visible: client!.nombrecomercial!.isNotEmpty,
                    child: Text(client!.razonsocial!)
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    Tag(
                      label: "RUC: ${client!.ruc}",
                    ),
                    const SizedBox(width: 8,),
                    Tag(
                      label: "Cod: ${client!.clienteid}",
                    )
                  ],
                )
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.gray,
          )
        ],
      ),
    );
  }
}
