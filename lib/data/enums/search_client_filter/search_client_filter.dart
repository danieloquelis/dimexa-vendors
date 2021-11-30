enum SearchClientFilter {
  CommercialName,
  SocialName,
  RUC,
  Code
}

extension CatExtension on SearchClientFilter {
  String get displayName {
    return [
      "Nombre comercial",
      "Razón social",
      "RUC",
      "Código"
    ][index];
  }
}