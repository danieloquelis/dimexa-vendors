import 'package:dimexa_vendors/data/models/session/session.dart';

abstract class SessionRepository {
  Session? getCurrentSession();

  String? getToken();

  Future<void> saveSession(Session session);

  Future<void> saveDeviceToken(String deviceToken);
}