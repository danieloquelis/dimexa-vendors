import 'package:dimexa_vendors/data/api/auth_api/auth_api.dart';
import 'package:dimexa_vendors/data/services/auth_service/auth_service.dart';
import 'package:get/get.dart';

class AuthServiceImpl implements AuthService {
  final AuthAPI _api = Get.find<AuthAPI>();

  @override
  Future<String?> get accessToken async {
    final result = await _api.login("hola", "hola");
    return result.data;
  }
}