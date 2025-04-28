// api_endpoints.dart

class ApiEndpoints {
  // Base URLs
  static const String baseUrl = 'https://portfolio-api-el6l.onrender.com/api';

  // Auth Endpoints
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';

  // User Endpoints
  static const String userProfile = '/user/profile';
  static const String updateProfile = '/user/update';

  // Product Endpoints (example)
  static const String products = '/products';
  static const String productDetails = '/products/details';

  // Orders Endpoints (example)
  static const String createOrder = '/orders/create';
  static const String getOrders = '/orders/list';

  //Device Info
static const String deviceInfo = "/deviceinfo";

// You can group more as your app grows
}
