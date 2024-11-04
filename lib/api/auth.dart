import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/dto/auth/user_info_dto.dart';

class AuthApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio dio;
  AuthApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/auth',
      headers: {'Content-type': 'application/json'},
    );
    dio = Dio(baseOptions);
  }

  Future<GoogleSignInAuthentication?> loginGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      } else {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;
        return googleSignInAuthentication;
      }
    } catch (e) {
      return null;
    }
  }

  Future<bool> authToken(String token) async {
    try {
      final response = await dio.post(
        '/token',
        data: jsonEncode({'token': token}),
      );
      if (response.statusCode == 200) {
        accessToken = response.data['access_token'];
        refreshToken = response.data['refresh_token'];
        print(accessToken);
        print(refreshToken);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('error : $e');
      return false;
    }
  }

  Future<UserInfoDto> info() async {
    try {
      final response = await dio.get('/info');
      return UserInfoDto.fromJson(response.data);
    } catch (e) {
      throw (e.toString());
    }
  }
}
