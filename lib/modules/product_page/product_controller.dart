import 'package:dimexa_vendors/core/utils/string_utils/string_utils.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:dimexa_vendors/data/enums/search_product_filter/search_product_filter.dart';
import 'package:dimexa_vendors/data/enums/sync_type/sync_type.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/data/models/search_result/search_result.dart';
import 'package:dimexa_vendors/data/models/sync_manager/sync_manager.dart';
import 'package:dimexa_vendors/data/repositories/product_repository/product_repository.dart';
import 'package:dimexa_vendors/data/repositories/sync_manager_repository/sync_manager_repository.dart';
import 'package:dimexa_vendors/global_controllers/global_controller.dart';
import 'package:dimexa_vendors/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductController extends GetxController {
  ///Injections
  final globalController = Get.find<GlobalController>();
  final syncManagerRepository = Get.find<SyncManagerRepository>();
  final productRepository = Get.find<ProductRepository>();

  ///Private variables
  late DateTime _lastSyncDate;
  SearchProductFilter _filterType = SearchProductFilter.name;
  bool _loading = false;
  final RxString _searchText = "".obs;
  List<Product> _products = [];
  final PagingController<int, Product> _productSearchController = PagingController(firstPageKey: 0);

  ///Getters
  DateTime get lastSyncDate => _lastSyncDate;
  SearchProductFilter get filterType => _filterType;
  bool get loading => _loading;
  List<Product> get products => _products;
  PagingController<int, Product> get productSearchController =>
      _productSearchController;

  @override
  void onInit() {
    super.onInit();

    //listener for search text in client view
    interval(_searchText, (_) {
      onSearchProduct(_searchText.value, 0, Numbers.maxLimitPagination);
    },
        time: const Duration(milliseconds: 500)
    );

    _productSearchController.addPageRequestListener((pageKey) {
      onSearchProduct(_searchText.value, pageKey, Numbers.maxLimitPagination);
    });

    String zoneId = globalController.selectedZoneId.value;
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(zoneId, SyncType.product);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _productSearchController.dispose();
  }

  void setSearchText(String text) {
    if (StringUtils.isNotNullNorEmpty(text)) {
      _loading = true;
    }
    update();
    _searchText.value = text;
  }

  void setFilterType(SearchProductFilter filterType) async {
    _filterType = filterType;
    update();
  }

  Future<void> onSearchProduct(String searchText, int offset, int limit) async {
    String text = searchText.isNotEmpty ? searchText.toUpperCase() : "";

    if (text.isEmpty) {
      _products = [];
      _loading = false;
      update();
      return;
    }

    String zoneId = globalController.selectedZoneId.value;
    SearchResult<Product> result = await productRepository.searchByZoneIdAndFilterType(zoneId, text, offset, limit, _filterType);
    int pages = 0;
    if (result.total > 0 && result.limit > 0) {
       pages = (result.total/result.limit).round();
    }
    
    if (pages > offset) {
      _productSearchController.appendPage(result.values, offset + result.values.length);
    } else {
      _productSearchController.appendLastPage(result.values);
    }

    _products = result.values;

    _loading = false;
    update();
  }

  void goToProductDetail(String? productId) {
    if (StringUtils.isNullOrEmpty(productId)) {
      globalController.hideLoadingDialog(
          errorMessage: "El producto no es válido, porfavor intenta otra vez."
      );
      return;
    }
    String zoneId = globalController.selectedZoneId.value;
    Product? product = productRepository.getById(zoneId, productId!);

    if (product == null) {
      globalController.hideLoadingDialog(
        errorMessage: "El producto no se encuentra actualizado, por favor sincronice productos."
      );
      return;
    }

    Get.toNamed(
        AppRoutes.productDetail,
      arguments: {
          'product': product
      }
    );
  }

  void syncOnDemand() async {
    String zoneId = globalController.selectedZoneId.value;
    await globalController.syncProducts(
        onDemand: true,
        zoneIds: [zoneId]
    );
    globalController.hideLoadingDialog();
    SyncManager? syncManager = syncManagerRepository.getByTypeAndZoneId(globalController.selectedZoneId.value, SyncType.product);
    if (syncManager != null && syncManager.lastSyncDownDate != null) {
      _lastSyncDate = syncManager.lastSyncDownDate!;
    }
    setSearchText("");
    update();
  }
}