class StringUtils {
  static String checkNullOrEmpty(String? value) {
    if (value == null) {
      return "";
    }

    if (value.isEmpty) {
      return "";
    }

    return value;
  }

  static bool isNullOrEmpty(String? value) {
    if (value == null) {
      return true;
    }

    if (value.isEmpty) {
      return true;
    }

    return false;
  }

  static bool isNotNullNorEmpty(String? value) {
    return !isNullOrEmpty(value);
  }
}