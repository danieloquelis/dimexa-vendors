//this is kind of interceptor will help to model error messages and do some previous processing
import 'package:dimexa_vendors/data/models/session/session.dart';

abstract class AuthInterceptor {
  Future<Session?> login(String user, String password);
}