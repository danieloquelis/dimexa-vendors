import 'package:dimexa_vendors/global_widgets/tag/tag.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientListItem extends StatelessWidget {

  Client? client;

  ClientListItem({Key? key, this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Nombre comercial",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18, color: AppColors.blue
                )
            ),
            Text("Razon social"),
            const SizedBox(height: 8,),
            Row(
              children: [
                Tag(
                  label: "RUC: 10026103636",
                ),
                const SizedBox(width: 8,),
                Tag(
                  label: "Cod: 100",
                )
              ],
            )
          ],
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.gray,
            )
        )
      ],
    );
  }
}
