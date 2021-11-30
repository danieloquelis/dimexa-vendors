import 'package:dimexa_vendors/data/models/session/session.dart';

abstract class SessionRepository {
  Session? getCurrentSession();

  String? getToken({Session? currentSession});

  Future<void> saveSession(Session session);

  Future<void> saveDeviceToken(Session currentSession, String deviceToken);

  Future<bool> verifyDeviceToken(String currentDeviceToken, String dbDeviceToken);
}