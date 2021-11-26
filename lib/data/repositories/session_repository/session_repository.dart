import 'package:dimexa_vendors/data/models/session/session.dart';

abstract class SessionRepository {
  Session? getCurrentSession();
}