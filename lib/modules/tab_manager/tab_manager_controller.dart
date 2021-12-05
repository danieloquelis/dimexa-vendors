import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/client_page/client_page.dart';
import 'package:dimexa_vendors/modules/collects_page/collects_page.dart';
import 'package:dimexa_vendors/modules/home_page/home_page.dart';
import 'package:dimexa_vendors/modules/products_page/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TabManagerController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();

  ///Private variables
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ClientsPage(),
    ProductsPage(),
    CollectsPage(),
  ];
  int _selectedIndex = 0;
  late Session _session;


  ///Getters
  List<Widget> get widgetOptions => _widgetOptions;
  int get selectedIndex => _selectedIndex;
  Session get session => _session;

  @override
  void onInit() {
    super.onInit();
    _session = globalController.session;
  }

  @override
  void onReady() {
    super.onReady();
    globalController.syncDownClients();
  }

  void onItemTapped(int index) {
    _selectedIndex = index;
    update();
  }

}