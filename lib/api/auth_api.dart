import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio http;

  AuthApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/auth',
    );
    http = Dio(baseOptions);
  }

  Future<String> login() async {
    try {
      final response = await http.get('/login');
      return response.toString();
    } catch (e) {
      throw (e.toString());
    }
  }
}
