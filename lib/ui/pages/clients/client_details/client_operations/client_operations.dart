import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class ClientOperations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(32),
            sliver: SliverGrid.count(
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              children: <Widget>[
                itemButton(
                  label: "Pedidos",
                  icon: Icons.shopping_cart,
                  onClick: () {},
                  //color: AppColors.green.withOpacity(0.5)
                ),
                itemButton(
                  label: "Documentos",
                  icon: Icons.document_scanner,
                  onClick: () {},
                  //color: AppColors.blue.withOpacity(0.5)
                ),
                itemButton(
                    label: "Devoluciones",
                    icon: Icons.refresh,
                    onClick: () {},
                    //color: Colors.grey.withOpacity(0.5)
                ),
                itemButton(
                    label: "Competidores",
                    icon: Icons.location_searching,
                    onClick: () {},
                    //color: Colors.deepPurple.withOpacity(0.5)
                ),
                itemButton(
                    label: "Entregas",
                    icon: Icons.compare_arrows,
                    onClick: () {},
                    //color: Colors.brown.withOpacity(0.5)
                ),
                itemButton(
                    label: "Letras protestadas",
                    icon: Icons.check,
                    onClick: () {},
                    //color: Colors.black.withOpacity(0.5)
                ),
                itemButton(
                    label: "Cobranza",
                    icon: Icons.payments,
                    onClick: () {},
                    //color: AppColors.orange.withOpacity(0.4)
                ),
                itemButton(
                    label: "Incidentes",
                    icon: Icons.report_problem,
                    onClick: () {},
                    //color: AppColors.red.withOpacity(0.4)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget itemButton({String? label, IconData? icon, Function? onClick, Color color = AppColors.blue}) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon!, size: 48, color: Colors.white,),
              const SizedBox(height: 8,),
              Text(label!, style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,)
            ],
          ),
        ),
        color: color.withOpacity(0.8),
      ),
    );
  }
}
