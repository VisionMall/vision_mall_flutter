import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/dto/auth/token_list_dto.dart';
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
        final result = TokenListDto.fromJson(response.data);
        pref.setString('accessToken', result.access_token);
        pref.setString('refreshToken', result.refresh_token);
        accessToken = result.access_token;
        print(result.access_token);
        print(result.refresh_token);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('error : $e');
      return false;
    }
  }

  Future refreshToken(String refreshToken) async {
    try {
      final response = await dio.post(
        '/refresh',
        data: jsonEncode({'refresh_token': refreshToken}),
      );
      if (response.statusCode == 200) {
        accessToken = response.data['access_token'];
        pref.setString('accessToken', accessToken.toString());
      } else {
        throw Exception('리프레시에 실패했습니다.');
      }
    } catch (e) {
      print('error : $e');
      throw Exception('리프레시에 실패했습니다.');
    }
  }

  Future<UserInfoDto> info() async {
    try {
      final response = await dio.get('/info', options: Options(headers: {'Authorization': 'Bearer $accessToken'}));
      print(response.realUri);
      print(response.data);
      return UserInfoDto.fromJson(response.data);
    } catch (e) {
      throw (e.toString());
    }
  }
}
