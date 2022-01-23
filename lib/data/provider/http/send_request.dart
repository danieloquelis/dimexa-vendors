import 'dart:convert';

import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dio/dio.dart';

dynamic _parseBody(dynamic body) {
  try {
    return jsonEncode(body);
  } catch(_) {
    return body;
  }
}

Future<Response> sendRequest({
  required Uri url,
  required HttpMethod method,
  required Map<String, String> headers,
  required dynamic body,
  required Duration timeOut,
  ProgressCallback? onReceiveProgress,
  String? token
}) {

  var finalHeaders = {...headers};

  if (method != HttpMethod.get) {
    final contentType = headers['Content-Type'];

    if (contentType == null || contentType.contains("application/json")) {
      finalHeaders['Content-Type'] = "application/json; charset=UTF-8";
      body = _parseBody(body);
    }
  }

  if (token != null && token.isNotEmpty) {
    finalHeaders['x-access-token'] = token;
  }

  //final client = Client();

  final options = BaseOptions(
    headers: finalHeaders,
    connectTimeout: timeOut.inMilliseconds
  );
  final dio = Dio(options);

  switch (method) {
    case HttpMethod.get:
      return dio.getUri(url, onReceiveProgress: onReceiveProgress);
    case HttpMethod.post:
      return dio.postUri(url, data: body, onReceiveProgress: onReceiveProgress);
    case HttpMethod.put:
      return dio.putUri(url, data: body, onReceiveProgress: onReceiveProgress);
    case HttpMethod.delete:
      return dio.deleteUri(url, data: body);
    case HttpMethod.patch:
      return dio.patchUri(url, data: body, onReceiveProgress: onReceiveProgress);
  }
}