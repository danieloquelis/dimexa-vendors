import 'package:dimexa_vendors/ui/widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/ui/widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientGeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: "Datos generales",
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: "RUC",
                      value: "10026103636",
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: "Cod",
                      value: "10026103636",
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: "Razón social",
                value: "Axeso SAC",
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: "Nombre comercial",
                value: "Farmacia mi luchito",
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: "Estado cliente",
                      value: "Normal",
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: "Estado diremid",
                      value: "Activo",
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
