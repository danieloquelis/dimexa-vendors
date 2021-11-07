import 'package:dimexa_vendors/localizations/app_translations.dart';

class Search {

}

enum SearchEntity {
  Client,
  Product
}

enum SearchClientFilter {
  CommercialName,
  SocialName,
  RUC,
  Code
}

extension CatExtension on SearchClientFilter {
  String get displayName {
    return [
      "Buscar por nombre comercial",
      "Buscar por razón social",
      "Buscar por RUC",
      "Buscar por código"
    ][this.index];
  }
}