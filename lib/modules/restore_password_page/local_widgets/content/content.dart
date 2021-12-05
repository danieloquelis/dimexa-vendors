import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_text_field/custom_text_field.dart';
import 'package:dimexa_vendors/modules/restore_password_page/restore_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RestorePasswordController>(
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CircleAvatar(
              backgroundColor: AppColors.tagBackground,
              radius: 84,
              child: Icon(
                Icons.lock,
                color: AppColors.green,
                size: 72,
              )
          ),
          SizedBox(height: 24,),
          Text(
            'Ingresa tu usuario para enviar una nueva contraseña por e-mail',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 56,),
          CustomTextField(
            placeHolder: AppTranslations.of(context)!.text("user"),
            prefixIcon: Icons.person,
            onChange: _.setUser
          ),
          SizedBox(height: 16,),
          ElevatedButton(
            onPressed: _.onResetPassword,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(AppTranslations.of(context)!.text("restore_password")),
            ),
          ),
        ],
      ),
    );
  }
}
