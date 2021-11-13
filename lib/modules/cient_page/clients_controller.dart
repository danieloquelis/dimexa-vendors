import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/state_manager.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientsController extends GetxController {
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