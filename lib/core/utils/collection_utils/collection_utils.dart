class CollectionUtils {
  static bool isNullOrEmpty(List? list) {
    if (list == null) {
      return true;
    }

    if (list.isEmpty) {
      return true;
    }

    return false;
  }

  static bool isNotNullNorEmpty(List? list) {
    return !isNullOrEmpty(list);
  }


}