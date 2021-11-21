import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController {
  Store? _store;


  GlobalController(this._store);

  late Vendor _currentVendor;


  Store get store => _store!;

  Vendor get currentVendor => _currentVendor;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    print("DB Initiated");
  }

  void setVendor(Vendor vendor) {
    _currentVendor = vendor;
  }
}