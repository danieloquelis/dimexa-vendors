import 'dart:async';
import 'dart:io';

import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/models/backend_error/backend_error.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';

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

  return unknownErrorMessage ?? Strings.unknownDefaultError;
}

onDBCatchError() {
  throw Strings.dbErrorMessage;
}