import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/tab_manager/tab_manager.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final globalController = Get.find<GlobalController>();
  late Store _store;
  String _userName = "";
  String _password = "";
  bool _loading = false;


  bool get loading => _loading;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //_store = globalController.store;
  }


  void setUserName(String value) {
    _userName = value;
  }

  void login() {


    if (_userName.isEmpty || _password.isEmpty) {
      print('no ha llenado');
      return;
    }

    _loading = true;
    update([]);

    bool authorized = false;
    final vendorBox = _store.box<Vendor>();
    List<Vendor> vendors = vendorBox.getAll();
    Vendor? currentVendor;
    for (Vendor vendor in vendors) {
      if (vendor.username == _userName && vendor.password == _password) {
        authorized = true;
        currentVendor = vendor;
        break;
      }
    }

    _loading = false;
    update([]);

    if (authorized) {
      globalController.setVendor(currentVendor!);
      Get.to(() => TabManager(), transition: Transition.rightToLeft);
    } else {
      print('incorrecto');
    }
  }

  void setPassword(String value) {
    _password = value;
  }
}