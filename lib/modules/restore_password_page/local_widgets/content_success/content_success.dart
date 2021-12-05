import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentSuccess extends StatelessWidget {
  RxString? email;
  Function? goBack;

  ContentSuccess({this.email, this.goBack});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CircleAvatar(
            backgroundColor: AppColors.tagBackground,
            radius: 84,
            child: Icon(
              Icons.check,
              color: AppColors.green,
              size: 72,
            )
        ),
        const SizedBox(height: 32,),
        Obx(
            () => Text(
              'Tu nueva contraseña será enviada a este correo electrónico ${email!.value}. Por favor, revisa tu buzón de entrada.',
              textAlign: TextAlign.center,
            ),
        ),
        const SizedBox(height: 48,),
        ElevatedButton(
          onPressed: () {
            if (goBack!= null) {
              goBack!();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(AppTranslations.of(context)!.text("back")),
          ),
        ),
      ],
    );
  }
}
