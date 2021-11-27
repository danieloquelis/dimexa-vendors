import 'dart:convert';

import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:http/http.dart';

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

  final client = Client();

  switch (method) {
    case HttpMethod.get:
      return client.get(url, headers: finalHeaders);
    case HttpMethod.post:
      return client.post(url, headers: finalHeaders, body: body);
    case HttpMethod.put:
      return client.put(url, headers: finalHeaders, body: body);
    case HttpMethod.delete:
      return client.delete(url, headers: finalHeaders, body: body);
    case HttpMethod.patch:
      return client.patch(url, headers: finalHeaders, body: body);
  }
}