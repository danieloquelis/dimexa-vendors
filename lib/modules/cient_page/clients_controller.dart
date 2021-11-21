import 'package:dimexa_vendors/data/enums/search_client_filter/search_client_filter.dart';
import 'package:dimexa_vendors/data/models/vendor/vendor.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/models/client/client.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/modules/cient_page/local_widgets/client_details/client_details.dart';
import 'package:get/get.dart';

class ClientsController extends GetxController {
  final globalController = Get.find<GlobalController>();
  bool _loading = false;
  final RxString _searchText = "".obs;
  late Vendor _currentVendor;
  late Store _store;
  late Box<Client> _clientBox;
  List<Client> _clients = [];

  late Query<Client> _queryClients;
  SearchClientFilter _queryType = SearchClientFilter.CommercialName;


  List<Client> get clients => _clients;

  bool get loading => _loading;

  void setSearchText(String text) {
    _searchText.value = text;
  }

  @override
  void onInit() {
    super.onInit();
    _store = globalController.store;
    _currentVendor = globalController.currentVendor;
    interval(_searchText, (_) {
      _onSearchClient(_searchText.value);
    },
      time: const Duration(milliseconds: 500)
    );
  }

  @override
  void onReady() {

  }

  void setQueryType(SearchClientFilter filterType) {
    _queryType = filterType;
  }

  void _onSearchClient(String queryParam) {
    String text = queryParam.isNotEmpty ? queryParam.toUpperCase() : "";
    if (text.isEmpty) {
      _clients = [];
      update();
      return;
    }

    _loading = true;
    update();

    _clientBox = _store.box<Client>();
    switch (_queryType) {

      case SearchClientFilter.CommercialName:
        _queryClients = _clientBox.query(
            Client_.zonaid.equals(_currentVendor.zone)
                .and(Client_.nombrecomercial.contains(text))
        ).build();
        break;
      case SearchClientFilter.SocialName:
        _queryClients = _clientBox.query(
            Client_.zonaid.equals(_currentVendor.zone)
              .and(Client_.razonsocial.contains(text))
        ).build();
        break;
      case SearchClientFilter.RUC:
        _queryClients = _clientBox.query(
            Client_.zonaid.equals(_currentVendor.zone)
              .and(Client_.ruc.contains(text))
        ).build();
        break;
      case SearchClientFilter.Code:
        _queryClients = _clientBox.query(
            Client_.zonaid.equals(_currentVendor.zone)
              .and(Client_.sid.contains(text))

        ).build();
        break;
      default:
        _queryClients = _clientBox.query(
            Client_.zonaid.equals(_currentVendor.zone)
                .and(Client_.nombrecomercial.contains(text))
        ).build();
    }

    _clients = _queryClients.find();
    _loading = false;
    update();
  }

  void seeClientDetails(Client client) {
    Get.to(() => ClientDetails(), arguments: {
      "client": client
    });
  }


}