import 'package:carousel_slider/carousel_controller.dart';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/data/interceptors/device_interceptor/device_interceptor_impl.dart';
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/splash_page/local_widgets/permissions/permission_bottom_sheet.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_identifier/flutter_device_identifier.dart';
import 'package:get/get.dart';
import 'package:password_dart/password_dart.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final sessionRepository = Get.find<SessionRepositoryImpl>();
  final deviceInterceptor = Get.find<DeviceInterceptorImpl>();

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
        const Duration(milliseconds: 100)
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
          message: "Los permisos de teléfono son obligatorios para el correcto funcionamiento de la app, otorga permisos desde ajustes del sistema y luego reinicia la aplicación.",
          action: () async {
            await openAppSettings();
          }
      );
      return;
    }

    //check terminal
    //get device serial number
    String currentDeviceToken = await FlutterDeviceIdentifier.serialCode;
    if (currentDeviceToken.isEmpty) {
      //show message error trying to get device serial number
      showMessage(
          message: "Ha ocurrido un error tratando de identificar tu equipo, porfavor intenta otra vez o contacta a tu supervisor."
      );
      return;
    }

    //check if in session exist the configuration (need to encrypt)
    Session? session = sessionRepository.getCurrentSession();
    if (session == null) {
      final validationResult = await deviceInterceptor.validateDevice(currentDeviceToken)
          .onError((e, s) {
        if (e is AppException) {
          showMessage(message: e.uiMessage);
        } else {
          showMessage(message: "Un error en el sistema ha ocurrido, porfavor contacta a un supervisor");
        }
        return null;
      });

      if (validationResult == null) {
        return;
      }

      if (!validationResult) {
        showMessage(
            message: "Este equipo no está autorizado para utilizar la aplicación."
        );
        return;
      }

      //save encrypted device token
      await sessionRepository.saveDeviceToken(currentDeviceToken);
    } else {
      bool isDeviceVerified = Password.verify(currentDeviceToken, session.deviceToken!);
      if (!isDeviceVerified) {
        showMessage(
            message: "Este equipo no está autorizado para utilizar la aplicación."
        );
        return;
      }
    }

    //check token
    String? token = sessionRepository.getToken();
    if (token != null && token.isNotEmpty) {
      Get.off(AppRoutes.login);
    } else {
      Get.off(AppRoutes.tabManager);
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