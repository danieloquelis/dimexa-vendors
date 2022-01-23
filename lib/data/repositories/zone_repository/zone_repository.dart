import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/zone/zone.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:get/get.dart';

class ZoneRepository {
  final zoneBox = Get.find<ObjectBox>().zoneBox;

  void saveMany(List<Zone> zones) {
    try {
      zoneBox.removeAll();
      zoneBox.putMany(zones);
    } catch(e) {
      onDBCatchError();
    }
  }

  Zone? getById(String zoneId) {
    try {
      return zoneBox.query(Zone_.zonaid.equals(zoneId)).build().findFirst();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }

  List<Zone>? getByIds(List<String> zoneIds) {
    try {
      return zoneBox.query(Zone_.zonaid.oneOf(zoneIds)).build().find();
    } catch(e) {
      onDBCatchError();
    }

    return null;
  }

}