import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vision_mall/dto/auth/user_info_dto.dart';
import 'package:vision_mall/dto/product/product_dto.dart';

late String? accessToken;
late String? refreshToken;
late SharedPreferences pref;
late FlutterTts tts;
TextEditingController addressTextEditingControlle = TextEditingController();
TextEditingController searchTextEditingControlle = TextEditingController();

late List<ProductDto> products;
late UserInfoDto userInfo;

List<bool> like = List.filled(products.length, false); // 길이가 10인, 기본값이 false인 리스트 생성