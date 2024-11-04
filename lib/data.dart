import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vision_mall/dto/product/product_dto.dart';

late String? accessToken;
late String? refreshToken;
late SharedPreferences pref;
late FlutterTts tts;
TextEditingController addressTextEditingControlle = TextEditingController();
TextEditingController searchTextEditingControlle = TextEditingController();

late List<ProductDto> products;
