import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class ClientInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                color: Colors.white,
                height: 150,
                child: Center(child: Text('Indicadores'),),
              ),
            ),
            const SizedBox(height: 16,),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('330K', style: TextStyle(color: AppColors.blue, fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Línea de crédito', style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Column(
                      children: [
                        Text('330K', style: TextStyle(color: AppColors.red, fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Deuda', style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Column(
                      children: [
                        Text('330K', style: TextStyle(color: AppColors.green, fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Disponible', style: TextStyle(fontSize: 12),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16,),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                padding: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    infoItem(
                      label: "Nombre comercial",
                      value: "Farmacia mi luchito"
                    ),
                    const Divider(thickness: 1,),
                    infoItem(
                      label: "Razón social",
                      value: "Axeso SAC"
                    ),
                    const Divider(thickness: 1,),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        infoItem(
//                          label: "RUC",
//                          value: "10026103636"
//                        ),
//                        infoItem(
//                          label: "Código",
//                          value: "40025"
//                        ),
//                        const Divider(thickness: 1,),
//                      ],
//                    ),
                    infoItem(
                      label: "Dirección principal",
                      value: "Av. santa margarita, 12563, Santiago de surco",
                      iconAction: Icons.location_on,
                      onClickAction: () {}
                    ),
                    const Divider(thickness: 1,),
                    infoItem(
                      label: "Teléfono",
                      value: "+51960943368"
                    ),
                    const Divider(thickness: 1,),
                    infoItem(
                      label: "Representante legal",
                      value: "Daniel Oquelis"
                    ),
                    const Divider(thickness: 1,),
                    infoItem(
                      label: "Estado diremid",
                      value: "Activo"
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget infoItem({String? label, String? value, IconData? iconAction, Function? onClickAction}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: AppColors.green),),
              const SizedBox(height: 2,),
              Text(value!, style: const TextStyle(fontSize: 16),),
            ],
          ),
        ),
        onClickAction != null && iconAction != null ?
          IconButton(
              onPressed: () => onClickAction,
              icon: Icon(iconAction, color: AppColors.blue,)
          ) : const SizedBox()
      ],
    );
  }
}
