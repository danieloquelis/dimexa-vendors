import 'package:dimexa_vendors/objectbox.g.dart';
import 'package:get/state_manager.dart';
import 'package:dimexa_vendors/models/client/client.dart';

class ClientsPageController extends GetxController {
  Store? _store;
  Box<Client>? clientBox;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {

  }
}