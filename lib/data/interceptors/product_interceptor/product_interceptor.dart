import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/product_api/product_api.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/product/product.dart';
import 'package:get/get.dart';

class ProductInterceptor {
  final _api = Get.find<ProductAPI>();

  Future<BackendResponse<Product>?> sync(String? token, List<String> zoneIds, RxInt received, RxInt total) async {
    final result = await _api.getByZoneIdsOrProductIds(
        zoneIds: zoneIds,
        token: token ?? "",
        received: received,
        total: total
    );

    if (result.error == null) {
      BackendResponse<Product> response = BackendResponse.fromJson(result.data, Product.fromJsonModel);
      return response;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }

  Future<BackendResponse<Product>?> getProductIds(String? token, List<String> productIds, RxInt received, RxInt total) async {
    final result = await _api.getByZoneIdsOrProductIds(
        productIds: productIds,
        token: token ?? "",
        received: received,
        total: total
    );

    if (result.error == null) {
      BackendResponse<Product> response = BackendResponse.fromJson(result.data, Product.fromJsonModel);
      return response;
    }

    return Future.error(
        AppException(
            interceptorErrorHandler(
              result,
            )
        )
    );
  }
}