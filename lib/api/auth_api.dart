import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vision_mall/data.dart';

class AuthApi {
  final Dio _dio = Dio();
  BaseOptions options = BaseOptions(
    baseUrl: dotenv.get('PROJECT_URL'),
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
      print('error : $e');
      return null;
    }
  }

  Future<bool> verifyLogin(String token) async {
    try {
      final response = await _dio.get('/auth/verify', queryParameters: {
        'code': token,
      });
      if (response.statusCode == 200) {
        access_token = response.data;
        print(access_token);
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
