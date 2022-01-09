import 'dart:async';

import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/restore_password_page/local_widgets/code_dialog/code_dialog.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RestorePasswordController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final authInterceptor = Get.find<AuthInterceptor>();

  ///Private variables
  late String _user = "";
  final RxInt _expirationCounter = 40.obs;
  Timer? _timer;
  final RxString _email = "****@**.com".obs;
  bool _success = false;

  ///Getters
  RxString get email => _email;
  bool get success => _success;

  @override
  void onClose() {
    super.onClose();
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void goBackToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  void setUser(String user) {
    _user = user;
  }

  void onResetPassword() async {
    if (StringUtils.isNullOrEmpty(_user)) {
      await globalController.hideLoadingDialog(
        errorMessage: "Se necesita un usuario para restablecer contraseña"
      );
      return;
    }

    globalController.showLoadingDialog();
    bool? result = await authInterceptor.resetPassword(_user)
    .onError((error, stackTrace) async {
      if (error is AppException) {
        await globalController.hideLoadingDialog(
            errorMessage: error.uiMessage
        );
      } else {
        await globalController.hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }
      return null;
    });

    if (result == null) {
      return;
    }
    globalController.hideLoadingDialog();

    if (!result) {
      return;
    }

    //show dialog
    showCodeVerificationDialog();
  }

  void showCodeVerificationDialog() {
    //start timer
    Get.defaultDialog(
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      titlePadding: const EdgeInsets.symmetric(vertical: 16),
      title: "Código de verificación",
      content: CodeDialog(
        expirationCounter: _expirationCounter,
        onChanged: onSetCode,
      ),
    ).whenComplete(() {
      if (_timer != null) {
        _timer!.cancel();
      }
      _expirationCounter.value = 40;
    });
    onStartExpirationCodeCounter();
  }

  void onStartExpirationCodeCounter() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_expirationCounter.value <= 1) {
        //reset value
        Get.back();
      } else {
        _expirationCounter.value = _expirationCounter.value - 1;
      }
    });
  }

  void onSetCode(String code) {
    if (code.trim().length >= 6) {
      //reset value
      Get.back();
      //start verifying code
      onVerifyCode(code);
    }
  }

  void onVerifyCode(String code) async {
    globalController.showLoadingDialog();
    String? email = await authInterceptor.resetPasswordAndValidateCode(_user, code)
    .onError((error, stackTrace) async {
      if (error is AppException) {
        await globalController.hideLoadingDialog(
            errorMessage: error.uiMessage
        );
      } else {
        await globalController.hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }
      return null;
    });

    if (email == null) {
      return;
    }
    globalController.hideLoadingDialog();
    _email.value = email;
    _success = true;
    update();
  }
}