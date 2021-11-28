import 'package:password_dart/password_dart.dart';

class SecurityUtil {
  static String hashDeviceToken(String deviceToken) {
    final algo = PBKDF2(
        blockLength: 16,
        iterationCount: 1000,
        desiredKeyLength: 4
    );
    return Password.hash(deviceToken, algo);
  }

  /// @deviceTokens
  /// { currentDeviceToken, dbDeviceToken }
  static bool verifyDeviceToken(Map<String?, String?> deviceTokens) {
    String currentDeviceToken = deviceTokens['currentDeviceToken']!;
    String dbDeviceToken = deviceTokens['dbDeviceToken']!;
    return Password.verify(currentDeviceToken, dbDeviceToken);
  }
}
