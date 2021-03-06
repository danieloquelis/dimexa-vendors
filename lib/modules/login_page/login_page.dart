import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_text_field/custom_text_field.dart';
import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/modules/login_page/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        backgroundColor: AppColors.basePage,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 90,
                    child: SvgPicture.asset(
                      "assets/images/dimex_logo_opt.svg",
                    ),
                  ),
                  SizedBox(height: 56,),
                  _.loading ?

                  const SpinKitChasingDots(
                    color: AppColors.green,
                  ) : fields(_)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget fields(LoginController _) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextField(
            placeHolder: AppTranslations.of(context)!.text("user"),
            prefixIcon: Icons.person,
            onChange: (val) => _.setUserName(val)
        ),
        const SizedBox(height: 16,),
        CustomTextField(
          placeHolder: AppTranslations.of(context)!.text("password"),
          prefixIcon: Icons.lock,
          isPassword: true,
          onChange: (val) => _.setPassword(val),
        ),
        const SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            _.login();
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(AppTranslations.of(context)!.text("login")),
          ),
        ),
        const SizedBox(height: 8,),
        GestureDetector(
          onTap: _.goToResetPassword,
          child: Text(
            AppTranslations.of(context)!.text("forgot_password"),
            textAlign: TextAlign.center,
            style: const TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.blue
            ),
          ),
        ),
      ],
    );
  }
}
