import 'package:dio/dio.dart';
import 'package:get/get.dart'as g;

import '../../infrastructure/app_controller/api_controller.dart';
import '../../infrastructure/network/api_client.dart';

class BasicApiService {
  // Singleton pattern to use the same instance
  static final BasicApiService _instance = BasicApiService._internal();
  factory BasicApiService() => _instance;
  late ApiClient _apiClient;

  BasicApiService._internal() {
    _apiClient = ApiController.instance.apiClient;  // Initialize ApiClient instance
  }

  // Generic GET method
  Future<Response<dynamic>> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _apiClient.dio.get(path, queryParameters: queryParameters);
      return response;
    } catch (e) {
      throw Exception('Failed to fetch data: $e');
    }
  }

  // Generic POST method
  Future<Response<dynamic>> post(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _apiClient.dio.post(path, data: data);
      return response;
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  // Optional: Generic PUT method
  Future<Response<dynamic>> put(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _apiClient.dio.put(path, data: data);
      return response;
    } catch (e) {
      throw Exception('Failed to update data: $e');
    }
  }

  // Optional: Generic DELETE method
  Future<Response<dynamic>> delete(String path, {Map<String, dynamic>? data}) async {
    try {
      final response = await _apiClient.dio.delete(path, data: data);
      return response;
    } catch (e) {
      throw Exception('Failed to delete data: $e');
    }
  }
}
