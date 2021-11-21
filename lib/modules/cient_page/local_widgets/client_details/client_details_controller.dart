import 'package:get/get.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
class ClientDetailsController extends GetxController {
  late Client _client;


  Client get client => _client;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Map<String, dynamic> args = Get.arguments;
    if (args['client'] != null) {
      _client = args['client'];
    }
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

  }
}