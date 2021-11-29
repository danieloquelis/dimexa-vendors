import 'package:dimexa_vendors/core/utils/interceptor_error_handler/interceptor_error_handler.dart';
import 'package:dimexa_vendors/core/utils/security_util/security_util.dart';
import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SessionRepositoryImpl implements SessionRepository {
  final _sessionBox = Get.find<ObjectBox>().sessionBox;

  @override
  Session? getCurrentSession() {
    List<Session> sessions = _sessionBox.getAll();
    if (sessions.isNotEmpty) {
      return sessions.first;
    }

    return null;
  }

  @override
  String? getToken({Session? currentSession}) {
    if (currentSession != null) {
      String? token = currentSession.token;
      DateTime? tokenExpirationDate = currentSession.fechaExpiracion;
      //validate token
      if (token != null && token.isEmpty) {
        return null;
      }

      //parsing datetime
      if (tokenExpirationDate == null) {
        return null;
      }

      DateTime now = DateTime.now();

      //validate expiration time token
      if (now.isAfter(tokenExpirationDate)) {
        return null;
      }

      return token;
    }
    return null;
  }

  ///this method overwrites the current session the new params
  @override
  Future<void> saveSession(Session session) async {
    Session? currentSession = getCurrentSession();
    if (currentSession != null) {
      session.id = currentSession.id;
      session.deviceToken = currentSession.deviceToken;
    }

    //saving relations
    if (session.zona != null && session.zona!.isNotEmpty) {
      session.zones.addAll(session.zona!);
    }

    try {
      _sessionBox.put(session);
    } catch(e) {
      onDBCatchError();
    }

  }

  @override
  Future<void> saveDeviceToken(Session? currentSession, String deviceToken) async {
    String encryptedDeviceToken = await compute<String, String>(SecurityUtil.hashDeviceToken, deviceToken);
    if (currentSession == null) {
      currentSession = Session(
        deviceToken: encryptedDeviceToken
      );
    } else {
      //if a session already exist then just update
      currentSession.deviceToken = encryptedDeviceToken;
    }

    try {
      _sessionBox.put(currentSession);
    } catch(e,s) {
      onDBCatchError();
    }
  }

  @override
  Future<bool> verifyDeviceToken(String currentDeviceToken, String dbDeviceToken) {
    Map<String, String?> deviceTokens =  {
      'currentDeviceToken': currentDeviceToken,
      'dbDeviceToken': dbDeviceToken
    };
    return compute<Map<String, String?>, bool>(SecurityUtil.verifyDeviceToken, deviceTokens);
  }
}