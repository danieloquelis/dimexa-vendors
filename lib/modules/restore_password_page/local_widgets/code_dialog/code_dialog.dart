import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/modules/restore_password_page/local_widgets/code_textfield/code_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeDialog extends StatelessWidget {
  RxInt? expirationCounter;
  Function? onChanged;

  CodeDialog({
    this.expirationCounter,
    this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Se envió un código de vericación al email asociado a éste usuario',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 18,),
        Obx(
          () => Text(
            "El código expirará en ${expirationCounter!.value}s",
            style: TextStyle(
                color: AppColors.orange
            ),
          )
        ),
        const SizedBox(height: 42,),
        CodeTextField(
          hint: "Código de 6 dígitos",
          onChanged: onChanged,
        )
      ],
    );
  }
}
