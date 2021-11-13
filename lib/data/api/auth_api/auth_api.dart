import 'package:dimexa_vendors/data/enums/http_method/http_method.dart';
import 'package:dimexa_vendors/data/provider/http/http.dart';
import 'package:dimexa_vendors/data/provider/http/http_result.dart';
import 'package:get/get.dart';

class AuthAPI {
  final Http _http = Get.find<Http>();

  Future<HttpResult> login(String email, String password) async {
    final result = _http.request(
      '/api/login',
      method: HttpMethod.post,
      body: {
        "email": email,
        "password": password
      }
    );
    return result;
  }
}