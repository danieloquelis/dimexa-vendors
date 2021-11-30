import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/data/repositories/client_repository/client_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class ClientsController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final clientBox = Get.find<ObjectBox>().clientBox;
  final clientRepository = Get.find<ClientRepository>();

  ///Private variables
  bool _loading = false;
  final RxString _searchText = "".obs;
  List<Client> _clients = [];
  SearchClientFilter _filterType = SearchClientFilter.CommercialName;
  late Client _selectedClient;

  ///Getters
  List<Client> get clients => _clients;
  bool get loading => _loading;
  Client get selectedClient => _selectedClient;
  SearchClientFilter get filterType => _filterType;

  void setSearchText(String text) {
    _loading = true;
    update();
    _searchText.value = text;
  }

  @override
  void onInit() {
    super.onInit();
    interval(_searchText, (_) {
      _onSearchClient(_searchText.value);
    },
      time: const Duration(milliseconds: 500)
    );
  }

  void onBack() {
    Get.back();
  }

  void setFilterType(SearchClientFilter filterType) async {
    _filterType = filterType;
    update();
  }

  Future<void> _onSearchClient(String searchText) async {
    String text = searchText.isNotEmpty ? searchText.toUpperCase() : "";
    if (text.isEmpty) {
      _clients = [];
      _loading = false;
      update();
      return;
    }

    //TODO: hardcoded
    _clients = await clientRepository.searchByZoneIdAndFilterType("FP563", text, _filterType);

    _loading = false;
    update();
  }

  void onSelectClient(Client client) {
    _selectedClient = client;
    Get.toNamed(AppRoutes.clientDetails);
  }


}