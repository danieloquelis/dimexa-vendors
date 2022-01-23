import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/document_type/document_type.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class DocumentTypeRepository {
  final documentTypeBox = Get.find<ObjectBox>().documentTypeBox;

  void saveMany(List<DocumentType> documents) {
    try {
      documentTypeBox.removeAll();
      documentTypeBox.putMany(documents);
    } catch(e) {
      onDBCatchError();
    }
  }

  List<DocumentType>? getByRUCCondition(bool requireRUC) {
    try {
      return documentTypeBox.query(DocumentType_.requiereruc.equals(requireRUC)).build().find();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }

}