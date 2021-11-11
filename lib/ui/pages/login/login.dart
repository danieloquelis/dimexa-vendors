import 'package:dimexa_vendors/localizations/app_translations.dart';
import 'package:dimexa_vendors/ui/widgets/custom_text_field/custom_text_field.dart';
import 'package:dimexa_vendors/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.basePage,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/images/dimexa_login.png",
                ),
                CustomTextField(
                  placeHolder: AppTranslations.of(context)!.text("user"),
                  prefixIcon: Icons.person,
                ),
                const SizedBox(height: 16,),
                CustomTextField(
                  placeHolder: AppTranslations.of(context)!.text("password"),
                  prefixIcon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(AppTranslations.of(context)!.text("login")),
                  ),
                ),
                const SizedBox(height: 8,),
                Text(
                  AppTranslations.of(context)!.text("forgot_password"),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
