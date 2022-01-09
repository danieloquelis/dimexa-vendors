import 'dart:async';
import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/api/device_api/device_api.dart';
import 'package:get/get.dart';

class DeviceInterceptor {
  final _api = Get.find<DeviceAPI>();

  Future validateDevice(String deviceToken) async {
    final result = await _api.validateDevice(
      deviceToken: deviceToken
    );

    if (result.error == null) {
      return result.data == "Verdadero";
    }

    return Future.error(
      AppException(
        interceptorErrorHandler(
          result,
          unknownErrorMessage: Strings.validateDeviceError
        )
      )
    );
  }
}