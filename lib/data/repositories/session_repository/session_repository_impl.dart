import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository.dart';
import 'package:get/get.dart';
import 'package:password_dart/password_dart.dart';

class SessionRepositoryImpl implements SessionRepository {
  final _boxSession = Get.find<ObjectBox>().sessionBox;

  SessionRepositoryImpl();

  @override
  Session? getCurrentSession() {
    try {
      return _boxSession.get(0);
    } catch(e) {
      //ignore: session doesn't exist
    }
    return null;
  }

  @override
  String? getToken() {
    Session? currentSession = getCurrentSession();
    if (currentSession != null) {
      return currentSession.token;
    }
    return null;
  }

  @override
  Future<void> saveSession(Session session) async {
    Session? currentSession = getCurrentSession();
    if (currentSession != null) {
      session.id = currentSession.id;
    }

    await _boxSession.putAsync(session).catchError(onDBCatchError());
  }

  @override
  Future<void> saveDeviceToken(String deviceToken) async {
    Session? currentSession = getCurrentSession();
    final algo = PBKDF2();
    final encryptedDeviceToken = Password.hash(deviceToken, algo);
    if (currentSession == null) {
      currentSession = Session(
        deviceToken: encryptedDeviceToken
      );
    } else {
      //if a session already exist then just update
      currentSession.deviceToken = encryptedDeviceToken;
    }
    await _boxSession.putAsync(currentSession).catchError(onDBCatchError());
  }
}