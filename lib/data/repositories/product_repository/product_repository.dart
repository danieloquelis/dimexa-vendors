import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/core/values/numbers.dart';
import 'package:dimexa_vendors/data/enums/search_product_filter/search_product_filter.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:dimexa_vendors/data/models/search_result/search_result.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class ProductRepository {
  final productBox = Get.find<ObjectBox>().productBox;

  void save(List<String> zoneIds, List<Product> products) {
    try {
      productBox.query(Product_.zonaid.oneOf(zoneIds)).build().remove();
      productBox.putMany(products);
    } catch(e) {
      onDBCatchError();
    }
  }

  Future<SearchResult<Product>> searchByZoneIdAndFilterType(String zoneId, String searchText, int offset, int limit, SearchProductFilter filterType) async {
    if (searchText.isEmpty) {
      return Future.value(SearchResult<Product>(
        values: []
      ));
    }
    try {
      late Query<Product> query;
      switch (filterType) {
        case SearchProductFilter.name:
          query = productBox.query(
              Product_.zonaid.equals(zoneId)
              .and(Product_.producto.contains(searchText))
          ).build();
          break;
        case SearchProductFilter.code:
          query = productBox.query(
              Product_.zonaid.equals(zoneId)
              .and(Product_.productoid.contains(searchText))
          ).build();
          break;
        case SearchProductFilter.molecule:
          //TODO: there is not molecule field
          query = productBox.query(
              Product_.zonaid.equals(zoneId)
                  .and(Product_.producto.contains(searchText))
          ).build();
          break;
      }

      int count = query.count();
      if (limit > Numbers.maxLimitPagination || limit <= Numbers.maxLimitPagination) {
        limit = Numbers.maxLimitPagination;
      }

      if (offset < 0) {
        offset = 0;
      }

      query.limit = limit;
      query.offset = offset;

      List<Product> products = query.find();
      return SearchResult<Product>(
        total: count,
        limit: limit,
        offset: offset,
        values: products
      );
    } catch(e) {
      onDBCatchError();
    }
    return Future.value(SearchResult<Product>(
        values: []
    ));
  }

  Product? getById(String zoneId, String productId) {
    try {
      return productBox.query(Product_.zonaid.equals(zoneId).and(Product_.productoid.equals(productId))).build().findUnique();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }
}