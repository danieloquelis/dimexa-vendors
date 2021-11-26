
import 'package:dimexa_vendors/data/models/app_permission/app_permission.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class GlobalController extends GetxController {

  GlobalController(this._store);

  final List<AppPermission> _filteredPermissions = [];
  final Store? _store;
  late Vendor _currentVendor;

  Store get store => _store!;
  Vendor get currentVendor => _currentVendor;
  List<AppPermission> get filteredPermissions => _filteredPermissions;

  @override
  void onReady() async {
    super.onReady();
    //check session prohibited access
    //if its yes -> close the app

    //filter list of permissions based on current status
    await filterPermissions();
  }

  @override
  void onClose() {
    super.onClose();
    _store!.close();
  }

  Future<void> filterPermissions() async {
    //build list of permissions
    for (AppPermission permission in requiredPermissions) {
      //filteredPermissions = use permissionRequired to check the status of the permissions and filter
      //check if permission has been negated or it has not been requested yet.
      PermissionStatus status = await permission.permissionType.status;
      if (status.isDenied) {
        _filteredPermissions.add(permission);
      }
    }
  }

  void setVendor(Vendor vendor) {
    _currentVendor = vendor;
  }
}