import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vision_mall/data.dart';

class AuthApi {
  BaseOptions options = BaseOptions(
    baseUrl: dotenv.get('PROJECT_URL'),
    headers: {'Content-type': 'application/json'},
  );

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
    Dio dio = Dio(options);
    try {
      final response = await dio.post(
        '/auth/token',
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
}
