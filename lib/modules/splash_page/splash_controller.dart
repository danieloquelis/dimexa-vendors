import 'package:carousel_slider/carousel_controller.dart';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/splash_page/local_widgets/permissions/permission_bottom_sheet.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final sessionRepository = Get.find<SessionRepository>();
  final deviceInterceptor = Get.find<DeviceInterceptor>();

  ///Private variables
  final CarouselController _carouselController = CarouselController();
  late List<AppPermission> _appPermissions = [];
  int _permissionSlidePos = 0;
  bool _loading = true;
  late String _message = "";
  Function? _onTakeAction;

  /// Getters
  List<AppPermission> get appPermissions => _appPermissions;
  int get permissionSlidePos => _permissionSlidePos;
  bool get loading => _loading;
  CarouselController get carouselController => _carouselController;
  Function? get onTakeAction => _onTakeAction;
  String? get message => _message;

  @override
  void onInit() {
    super.onInit();
    _appPermissions = globalController.filteredPermissions;
  }

  @override
  void onReady() {
    super.onReady();
    runValidations();
  }

  void runValidations() async {
    //give app some seconds
    await Future.delayed(
        const Duration(milliseconds: 1000)
    );

    //show permissions dialog if list permissions is not empty
    if (_appPermissions.isNotEmpty) {
      await Get.bottomSheet(
          PermissionBottomSheet(),
          isScrollControlled: true,
          isDismissible: false
      );
    }

    //give app some seconds
    await Future.delayed(
        const Duration(milliseconds: 100)
    );

    //if permission has not been granted
    bool isPhonePermissionGranted = await Permission.phone.isGranted;
    if (!isPhonePermissionGranted) {
      showMessage(
          message: Strings.phonePermissionError,
          action: () async {
            await openAppSettings();
          }
      );
      return;
    }

    //TODO: Hardcoded
    //check terminal
    //get device serial number
    // String currentDeviceToken = await FlutterDeviceIdentifier.serialCode;
    // if (currentDeviceToken.isEmpty) {
    //   //show message error trying to get device serial number
    //   showMessage(
    //       message: Strings.validateDeviceError
    //   );
    //   return;
    // }

    //check if in session exist the configuration (need to encrypt)
    Session? session = sessionRepository.getCurrentSession();
    if (session == null) {
      //TODO: Hardcoded
      // final validationResult = await deviceInterceptor.validateDevice(currentDeviceToken)
      //     .onError((e, s) {
      //   if (e is AppException) {
      //     showMessage(message: e.uiMessage);
      //   } else {
      //     showMessage(message: Strings.systemError);
      //   }
      //   return null;
      // });
      //
      // if (validationResult == null) {
      //   return;
      // }
      //
      // if (!validationResult) {
      //   showMessage(
      //       message: Strings.deviceNotValidatedError
      //   );
      //   return;
      // }
      //
      // //save encrypted device token
      // await sessionRepository.saveDeviceToken(session, currentDeviceToken);
    } else {
      //TODO: Hardcoded
      //verify if the device is allow to use the app (offline)
      // bool isDeviceVerified = await sessionRepository.verifyDeviceToken(currentDeviceToken, session.deviceToken!);
      // if (!isDeviceVerified) {
      //   showMessage(
      //       message: Strings.deviceNotValidatedError
      //   );
      //   return;
      // }

      //set the session
      globalController.setSession(session);
    }

    //check token
    String? token = await globalController.getToken();
    if (token == null || token.isEmpty) {
      Get.offNamed(AppRoutes.login);
    } else {
      try {
        await globalController.firstSyncProcess();
        Get.offNamed(AppRoutes.tabManager);
      } catch (error) {
        if (error is AppException) {
          globalController.hideLoadingDialog(
              errorMessage: error.uiMessage
          );
        } else {
          globalController.hideLoadingDialog(
              errorMessage: Strings.systemError
          );
        }

        showMessage(
          message: "Cierre la aplicación e inténtelo nuevamente"
        );
      }
    }
  }

  void onPermissionSlideChanged(index) {
    _permissionSlidePos = index;
    update(["permission_slider_indicator"]);
  }

  void onRequestPermission() async {
    Permission permissionRequested = _appPermissions[_permissionSlidePos].permissionType;
    await permissionRequested.request();

    bool isLast = _permissionSlidePos == _appPermissions.length - 1;
    if (isLast) {
      //if the request is the last permission in the list then minimize bottomsheet
      Get.back();
    } else {
      _carouselController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear
      );
    }
  }

  void showMessage({required String message, Function? action}) {
    _loading = false;
    _message = message;
    _onTakeAction = action;
    update();
  }
}