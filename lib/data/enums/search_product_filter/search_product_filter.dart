enum SearchProductFilter {
  name,
  code,
  molecule
}

extension CatExtension on SearchProductFilter {
  String get displayName {
    return [
      "Nombre",
      "Código",
      "Molécula",
    ][index];
  }
}