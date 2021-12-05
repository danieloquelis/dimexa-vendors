import 'package:dimexa_vendors/core/theme/app_colors/app_colors.dart';
import 'package:dimexa_vendors/data/provider/localizations/app_translations.dart';
import 'package:dimexa_vendors/global_widgets/custom_text_field/custom_text_field.dart';
import 'package:dimexa_vendors/modules/restore_password_page/local_widgets/content/content.dart';
import 'package:dimexa_vendors/modules/restore_password_page/local_widgets/content_success/content_success.dart';
import 'package:dimexa_vendors/modules/restore_password_page/restore_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestorePasswordPage extends StatefulWidget {

  @override
  _RestorePasswordPageState createState() => _RestorePasswordPageState();
}

class _RestorePasswordPageState extends State<RestorePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RestorePasswordController>(
      builder: (_) => Scaffold(
        backgroundColor: AppColors.basePage,
        appBar: AppBar(
          toolbarHeight: 72,
          backgroundColor: AppColors.basePage,
          elevation: 0,
          leading: Visibility(
            visible: !_.success,
            child: IconButton(
              onPressed: _.goBackToLogin,
              icon: Icon(Icons.arrow_back_ios, color: AppColors.gray,),
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: _.success ?ContentSuccess(
                goBack: _.goBackToLogin,
                email: _.email,
              ) : Content()
            ),
          ),
        ),
      ),
    );
  }
}
