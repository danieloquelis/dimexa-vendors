import 'dart:async';
import 'dart:io';

import 'package:dimexa_vendors/data/models/backend_error/backend_error.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';

String interceptorErrorHandler(HttpResult result, {
  String? connectionErrorMessage,
  String? timeoutErrorMessage,
  String? unknownErrorMessage
}) {
  if (result.statusCode >= 400) {
    BackendError backendError = backendErrorFromMap(result.error!.data);
    return backendError.message ?? "Error en el servidor, porfavor intenta otra vez o contacta a un supervisor";
  }

  final errorException = result.error!.exception;
  if (errorException is SocketException) {
    //network error - internet problems
    return connectionErrorMessage ?? "Parece que tienes problemas de internet. Es necesario tener una conexión estable si es la primera vez que inicias el sistema, porfavor intenta otra vez";
  }

  if (errorException is TimeoutException) {
    //network error - timeout
    return timeoutErrorMessage ?? "El tiempo de respuesta ha excedido los límites, es necesario tener una conexión estable si es la primera vez que inicias el sistema";
  }

  return unknownErrorMessage ?? "Ha ocurrido un error tratando de validar el dispositivo, porfavor intenta otra vez o contacta un supervisor";
}