import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/values/strings.dart';
import 'package:dimexa_vendors/data/interceptors/auth_interceptor/auth_interceptor_impl.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository_impl.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final authInterceptor = Get.find<AuthInterceptorImpl>();
  final sessionRepository = Get.find<SessionRepositoryImpl>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();

  ///Private variables
  String _userName = "";
  String _password = "";
  bool _loading = false;

  ///Getters
  bool get loading => _loading;


  void setUserName(String value) {
    _userName = value;
  }

  void login() async {
    if (_userName.isEmpty || _password.isEmpty) {
      globalController.hideLoadingDialog(
        errorMessage: "Usuario y contraseña son campos necesarios"
      );
      return;
    }

    _loading = true;
    update();

    Session? session = await authInterceptor.login(_userName, _password)
    .onError((error, stackTrace) {
      if (error is AppException) {
        globalController.hideLoadingDialog(
            errorMessage: error.uiMessage
        );
      } else {
        globalController.hideLoadingDialog(
            errorMessage: Strings.systemError
        );
      }

      return null;
    });

    if (session == null) {
      _loading = false;
      update();
      return;
    }

    //persist session
    //syncManagerRepository.updateByType(SyncType.session, syncDown: true);
    await sessionRepository.saveSession(session);

    //set session in the global controller
    globalController.setSession(session);

    //stop loading
    //show success login

    //first sync and go to tab manager
    await globalController.firstSyncProcess();
    Get.offNamed(AppRoutes.tabManager);
  }

  void setPassword(String value) {
    _password = value;
  }

  void goToResetPassword() {
    Get.toNamed(AppRoutes.restorePassword);
  }
}