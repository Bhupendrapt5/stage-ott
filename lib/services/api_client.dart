import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stage_ott_assignment/env_config.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

class ApiClient {
  late final Dio _dio;

  ApiClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.baseUrl,
        headers: {
          'Authorization': 'Bearer ${EnvConfig.apiKey}',
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  Future<Response> request({
    required String endpoint,
    Map<String, dynamic>? queryParams,
  }) async {
    return await _dio.get(endpoint, queryParameters: queryParams);
  }
}
