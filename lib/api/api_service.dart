import 'package:dio/dio.dart';
final dio = Dio();

class ApiService {
  final Dio _dio = Dio();

  Future<Response> fetchData(String url) async {
    try {
      final response = await _dio.get(url);
      return response;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}