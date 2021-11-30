import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor_impl.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final globalController = Get.find<GlobalController>();
  final authInterceptor = Get.find<AuthInterceptorImpl>();
  final sessionRepository = Get.find<SessionRepositoryImpl>();

  late Store _store;
  String _userName = "";
  String _password = "";
  bool _loading = false;

  bool get loading => _loading;


  void setUserName(String value) {
    _userName = value;
  }

  void login() async {


    if (_userName.isEmpty || _password.isEmpty) {
      print('no ha llenado');
      return;
    }

    _loading = true;
    update();

    Session? session = await authInterceptor.login(_userName, _password)
    .onError((error, stackTrace) {
      //TODO: show dialogs with errors
      //stop loading
      //show error dialog
      return null;
    });

    if (session == null) {
      _loading = false;
      update();
      return;
    }

    //persist session
    await sessionRepository.saveSession(session);

    //set session in the global controller
    globalController.setSession(session);

    //stop loading
    //show success login

    //go to tab manager
    Get.offNamed(AppRoutes.tabManager);
  }

  void setPassword(String value) {
    _password = value;
  }
}