import 'package:dimexa_vendors/data/interceptors/client_interceptor/client_interceptor.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/client_page/local_widgets/details_bottom_sheet/details_bottom_sheet.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';

class ClientDetailsController extends GetxController {
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


  @override
  void onInit() {
    super.onInit();
    _session = globalController.session;
    _selectedClient = Get.arguments['selectedClient'];

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
        DetailsBottomSheet.generalInfo(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 390
        ).show(),
        isScrollControlled: true
    );
  }

  void showCommercialInfoBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.commercialInfo(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 316
        ).show(),
        isScrollControlled: true
    );
  }

  void showContactsBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.contacts(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 360
        ).showOnlyWidget(),
        isScrollControlled: true
    );
  }

  void showAddressesBottomSheet() {
    Get.bottomSheet(
        DetailsBottomSheet.adresses(
            context: Get.overlayContext!,
            client: _selectedClient,
            height: 150
        ).showOnlyWidget(),
        isScrollControlled: true
    );
  }

  void goToMapView() {
    //here we initialized everything regarding map view
    Get.toNamed(AppRoutes.clientAddressMap);
  }

}