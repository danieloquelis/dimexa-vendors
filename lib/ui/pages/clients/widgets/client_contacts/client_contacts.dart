
import 'package:dimexa_vendors/ui/widgets/custom_expandable_field/custom_expandable_field.dart';
import 'package:dimexa_vendors/ui/widgets/custom_info_field/custom_info_field.dart';
import 'package:flutter/material.dart';

class ClientContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomExpandableField(
      title: "Contactos",
      child: Column(
        children: [
          contactItem(
            context: context,
            position: "Gerente general",
            fullName: "Daniel Oquelis Leon",
            gender: "Masculino",
            civilStatus: "Soltero",
            birthday: "28/11/1995",
            phoneNumber: "+51960943368",
            email: "daniel.oquelis@gmail.com"
          ),
          SizedBox(height: 8,),
          contactItem(
              context: context,
              position: "Gerente general",
              fullName: "Daniel Oquelis Leon",
              gender: "Masculino",
              civilStatus: "Soltero",
              birthday: "28/11/1995",
              phoneNumber: "+51960943368",
              email: "daniel.oquelis@gmail.com"
          )
        ],
      )
    );
  }

  Widget contactItem({
      BuildContext? context,
      String? position,
      String? fullName,
      String? gender,
      String? civilStatus,
      String? birthday,
      String? phoneNumber,
      String? email
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context!).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomInfoField(
                label: "Cargo",
                value: position!,
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: "Nombre completo",
                value: fullName!,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomInfoField(
                      label: "Genero",
                      value: gender!,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: "Estado civil",
                      value: civilStatus!,
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
                      label: "Fecha de nacimiento",
                      value: birthday!,
                    ),
                  ),
                  Flexible(
                    child: CustomInfoField(
                      label: "Teléfono",
                      value: phoneNumber!,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              CustomInfoField(
                label: "Correo",
                value: email!,
              ),
            ],
          )
      ),
    );
  }
}
