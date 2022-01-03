import 'package:dimexa_vendors/data/models/zone/zone.dart';

abstract class ZoneRepositoryAbstract {
  void saveMany(List<Zone> zones);

  List<Zone>? getByIds(List<String> zoneIds);

  Zone? getById(String zoneId);
}