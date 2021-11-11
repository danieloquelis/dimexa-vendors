import 'package:dimexa_vendors/ui/widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/ui/widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientComercialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: "Datos comerciales",
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInfoField(
                  label: "Subcanal",
                  value: "Clientes A",
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: "Tipo de descuento",
                        value: "Normal",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: "Condición",
                        value: "F6-Letra",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: "Día de visita 1",
                        value: "Lunes",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: "Día de visita 2",
                        value: "Martes",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: "Representante legal",
                        value: "Luis Leon",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: "DNI",
                        value: "72402491",
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Flexible(
                      child: CustomInfoField(
                        label: "Aniversario",
                        value: "21 de enero",
                      ),
                    ),
                    Flexible(
                      child: CustomInfoField(
                        label: "Teléfono",
                        value: "+51960943368",
                      ),
                    )
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
