import 'package:dimexa_vendors/data/enums/env/env.dart';
import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:dimexa_vendors/data/provider/http/send_request.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

typedef Parser<T> = T Function(dynamic data);

class Http {
  final String baseUrl = !kDebugMode ? Env.prod.url : Env.dev.url;

  Http();

  Future<HttpResult<T>> request<T>(
    String path, {
      HttpMethod method = HttpMethod.get,
      Map<String, String> headers = const {},
      Map<String, String> queryParameters = const {},
      dynamic body,
      Parser<T>? parser,
      Duration timeOut = const Duration(seconds: 10),
      String? token,
      RxInt? received,
      RxInt? total
  }) async {

    int? statusCode;
    dynamic data;

    try {
      late Uri url;
      if (path.startsWith("http://") || path.startsWith("https://")) {
        url = Uri.parse(path);
      } else {
        url = Uri.parse("$baseUrl$path");
      }

      if (queryParameters.isNotEmpty) {
        url = url.replace(
          queryParameters: {
            ...url.queryParameters,
            ...queryParameters
          }
        );
      }

      final response = await sendRequest(
        url: url,
        method: method,
        headers: headers,
        body: body,
        timeOut: timeOut,
        token: token,
        onReceiveProgress: (int _received, int _total) {
          if (received != null && total != null) {
            received.value = _received;
            total.value = _total;
          }
        }
      );

      data = response.data;
      statusCode = response.statusCode;

      //throw errors from backend, meaning the request was sent
      if (statusCode! >= 400) {
        throw HttpError(
          exception: null,
          stackTrace: StackTrace.current,
          data: data
        );
      }

      return HttpResult<T>(
        data: parser != null ? parser(data) : data,
        statusCode: statusCode,
        error: null
      );
    } catch(e, s) {
      if (e is HttpError) {
        return HttpResult<T>(
          data: null,
          statusCode: statusCode!,
          error: e
        );
      }

      return HttpResult<T>(
        data: null,
        statusCode: statusCode ?? -1,
        error: HttpError(
          data: data,
          exception: e,
          stackTrace: s
        )
      );
    }
  }

}