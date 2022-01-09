import 'dart:async';
import 'dart:io';

import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/models/backend_error/backend_error.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:dio/dio.dart';

String interceptorErrorHandler(HttpResult result, {
  String? connectionErrorMessage,
  String? timeoutErrorMessage,
  String? unknownErrorMessage
}) {
  if (result.statusCode >= 400) {
    BackendError backendError = backendErrorFromMap(result.error!.data);
    return backendError.message ?? Strings.serverDefaultError;
  }

  final errorException = result.error!.exception;
  if (errorException is SocketException) {
    //network error - internet problems
    return connectionErrorMessage ?? Strings.socketDefaultError;
  }

  if (errorException is TimeoutException) {
    //network error - timeout
    return timeoutErrorMessage ?? Strings.timeoutDefaultError;
  }

  if (errorException is DioErrorType) {
    switch (errorException) {
      case DioErrorType.connectTimeout:
        return timeoutErrorMessage ?? Strings.timeoutDefaultError;
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.response:
      case DioErrorType.cancel:
      case DioErrorType.other:
        break;
    }
  }

  return unknownErrorMessage ?? Strings.unknownDefaultError;
}

onDBCatchError() {
  throw Strings.dbErrorMessage;
}