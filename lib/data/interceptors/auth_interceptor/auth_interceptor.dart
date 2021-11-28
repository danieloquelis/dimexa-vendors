//this is kind of interceptor will help to model error messages and do some previous processing
abstract class AuthInterceptor {
  Future login(String user, String password);
}