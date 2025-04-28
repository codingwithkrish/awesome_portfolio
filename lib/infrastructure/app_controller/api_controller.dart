import 'package:get/get.dart';

import '../../domain/services/basic_api_service.dart';
import '../network/api_client.dart';
class ApiController extends GetxController {
  late ApiClient _apiClient;
  late BasicApiService _basicApiService;
  static ApiController get instance=>Get.find();
   ApiClient get apiClient=>_apiClient;
   BasicApiService get baseApiService =>_basicApiService;
  @override
  void onInit() {
    super.onInit();
    // Initialize ApiClient and BasicApiService
    _apiClient = ApiClient();
    _basicApiService = BasicApiService();
  }
}
