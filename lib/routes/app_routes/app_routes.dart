
class AppRoutes {
  static const splash = "/splash";
  static const login = "/login";
  static const restorePassword = "/login/restore";
  static const tabManager = "/tabManager";
  static const clientDetail =  "/client/:clientId";
  static String toClientDetail(int clientId) {
    return '/client/$clientId';
  }
  static const clientAddressMap = "/map";
  static const product = "/product";
  static const productDetail = "/product/:productId";
}