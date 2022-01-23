import 'package:dimexa_vendors/core/utils/app_exception/app_exception.dart';
import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/api/order_api/order_api.dart';
import 'package:dimexa_vendors/data/models/backend_response/backend_response.dart';
import 'package:dimexa_vendors/data/models/document_type/document_type.dart';
import 'package:get/get.dart';

class OrderInterceptor  {
  final _api = Get.find<OrderAPI>();

  Future<BackendResponse<DocumentType>?> syncDocumentTypes(String? token, RxInt received, RxInt total) async {
    final result = await _api.getDocumentType(
        token: token ?? "",
        received: received,
        total: total
    );

    if (result.error == null) {
      BackendResponse<DocumentType> response = BackendResponse.fromJson(result.data, DocumentType.fromJsonModel);
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