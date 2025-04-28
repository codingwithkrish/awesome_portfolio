// api_client.dart
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_endpoints.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late Dio dio;
  String? _accessToken;
  String? _refreshToken;

  InterceptorsWrapper? _authInterceptor;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl:ApiEndpoints.baseUrl, // <-- Your base URL
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }

  void updateTokens({required String accessToken, required String refreshToken}) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;

    _addAuthInterceptor(); // Only after login
  }

  void clearTokens() {
    _accessToken = null;
    _refreshToken = null;
    _removeAuthInterceptor(); // On logout
  }

  void _addAuthInterceptor() {
    // Prevent adding multiple interceptors
    if (_authInterceptor != null) return;

    _authInterceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        if (_accessToken != null) {
          options.headers['Authorization'] = 'Bearer $_accessToken';
        }
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          final refreshed = await _refreshAccessToken();
          if (refreshed) {
            final opts = error.requestOptions;
            final cloneReq = await _retryRequest(opts);
            return handler.resolve(cloneReq);
          }
        }
        return handler.next(error);
      },
    );

    dio.interceptors.add(_authInterceptor!);
  }

  void _removeAuthInterceptor() {
    if (_authInterceptor != null) {
      dio.interceptors.remove(_authInterceptor);
      _authInterceptor = null;
    }
  }

  Future<bool> _refreshAccessToken() async {
    try {
      final response = await dio.post(
        '/auth/refresh',
        data: {
          'refresh_token': _refreshToken,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $_refreshToken',
          },
        ),
      );

      if (response.statusCode == 200) {
        final newAccessToken = response.data['access_token'];
        final newRefreshToken = response.data['refresh_token'];

        if (newAccessToken != null && newRefreshToken != null) {
          updateTokens(accessToken: newAccessToken, refreshToken: newRefreshToken);
          return true;
        }
      }
      return false;
    } catch (e) {
      debugPrint('Token refresh failed: $e');
      return false;
    }
  }

  Future<Response<dynamic>> _retryRequest(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
      responseType: requestOptions.responseType,
      contentType: requestOptions.contentType,
      extra: requestOptions.extra,
      receiveDataWhenStatusError: requestOptions.receiveDataWhenStatusError,
      followRedirects: requestOptions.followRedirects,
      validateStatus: requestOptions.validateStatus,
    );

    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
