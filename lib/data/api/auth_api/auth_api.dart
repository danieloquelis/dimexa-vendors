import 'package:dimexa_vendors/data/provider/http/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class AuthAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> login({required String user, required String password}) async {
    final result = _http.request(
      '/usuarios/loginUsuario',
      method: HttpMethod.post,
      body: {
        "usuario": user,
        "password": password
      }
    );
    return result;
  }

  Future<HttpResult> resetPassword({required String user}) async {
    final result = _http.request(
        '/usuarios/resetPassword',
        method: HttpMethod.post,
        body: {
          "usuario": user
        }
    );
    return result;
  }

  Future<HttpResult> resetPasswordAndValidateCode({required String user, required String code}) async {
    final result = _http.request(
        '/usuarios/resetPasswordCodigo',
        method: HttpMethod.post,
        body: {
          "usuario": user,
          "codigo": code
        }
    );
    return result;
  }

  Future<HttpResult> refreshToken({required String user}) async {
    final result = _http.request(
        '/usuarios/refreshToken',
        method: HttpMethod.get,
        body: {
          "usuario": user
        }
    );
    return result;
  }
}