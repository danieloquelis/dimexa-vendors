import 'dart:async';

import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/client_detail_page/local_widgets/detail_bottom_sheet/detail_bottom_sheet.dart';
import 'package:dimexa_vendors/modules/client_detail_page/local_widgets/start_order_bottom_sheet/start_oder_bottom_sheet.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientDetailController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final clientBox = Get.find<ObjectBox>().clientBox;
  final clientRepository = Get.find<ClientRepository>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final clientInterceptor = Get.find<ClientInterceptor>();

  ///Private variables
  late Client _selectedClient;
  late Session _session;
  Client get selectedClient => _selectedClient;
  late ScrollController _scrollController;
  Timer? _timer;
  double _scrollStep = 0.1;

  @override
  void onInit() {
    super.onInit();
    _session = globalController.session;
    _selectedClient = Get.arguments['selectedClient'];

  }

  @override
  void onClose() {
    super.onClose();
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  void onBack() {
    Get.back(closeOverlays: true);
  }

  void onSyncClient() async {
    globalController.showLoadingDialog();
    Client? client = await clientInterceptor.getClientById(_session.token!, _selectedClient.clienteid!)
        .onError((error, stackTrace) async {
      await globalController.hideLoadingDialog(
          errorMessage: '$error'
      );
      return null;
    });

    globalController.hideLoadingDialog();

    if (client == null) {
      return;
    }

    _selectedClient = clientRepository.updateClientById(globalController.selectedZoneId.value, _selectedClient.clienteid!, client);

    update();
  }

  void showGeneralInfoBottomSheet() {
    Get.bottomSheet(
        DetailBottomSheet.generalInfo(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 408
        ).show(),
        isScrollControlled: true,
    );
  }

  void showCommercialInfoBottomSheet() {
    Get.bottomSheet(
        DetailBottomSheet.commercialInfo(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 316
        ).show(),
        isScrollControlled: true
    );
  }

  void showContactsBottomSheet() {
    Get.bottomSheet(
        DetailBottomSheet.contacts(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 360
        ).showOnlyWidget(),
        isScrollControlled: true
    );
  }

  void showAddressesBottomSheet() {
    Get.bottomSheet(
      DetailBottomSheet.adresses(
          context: Get.overlayContext!,
          client: _selectedClient,
          height: 150
      ).showOnlyWidget(),
      isScrollControlled: true,
    );
  }

  void goToMapView() {
    //here we initialized everything regarding map view
    Get.toNamed(AppRoutes.clientAddressMap);
  }

  void showStartOrderBottomSheet() async {
    _scrollController = ScrollController();
    _scrollController.addListener(scrollListener);

    Get.bottomSheet(
      StartOderBottomSheet(
        scrollController: _scrollController,
        onStartOrder: () {
          Get.back();
          Get.toNamed(AppRoutes.product);
        },
      ),
      isScrollControlled: true
    ).whenComplete(() {
      _scrollController.removeListener(scrollListener);
    });
    await Future.delayed(const Duration(seconds: 2));
    //only if scroll has clients, start animation
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          curve: Curves.ease,
          duration: const Duration(seconds: 2)
      );
    }
  }

  void scrollListener() async {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      await Future.delayed(const Duration(seconds: 2));
      if (_scrollController.hasClients) {
        await _scrollController.animateTo(
            _scrollController.position.minScrollExtent,
            curve: Curves.ease,
            duration: const Duration(seconds: 2)
        );
        _scrollController.removeListener(scrollListener);
      }
    }
  }
}