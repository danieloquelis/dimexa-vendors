import 'package:dimexa_vendors/data/models/session/session.dart';
import 'package:dimexa_vendors/data/provider/objectbox/objectbox.g.dart';
import 'package:dimexa_vendors/data/repositories/session_repository/session_repository.dart';

class SessionRepositoryImpl implements SessionRepository {

  late final Box<Session> _boxSession;

  SessionRepositoryImpl(this._boxSession);

  @override
  Session? getCurrentSession() {
    return _boxSession.get(0);
  }

}