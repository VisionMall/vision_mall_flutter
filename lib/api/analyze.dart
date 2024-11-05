import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/dto/analyze/image_analyze_dto.dart';
import 'package:vision_mall/dto/analyze/request_image_analyze.dart';

class AnalyzeApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio dio;

  ProductApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/analyze',
    );
    dio = Dio(baseOptions);
  }

  Future<ImageAnalyzeDto> analyze(String image) async {
    try {
      final response = await dio.post(
        '/analyze',
        data: jsonEncode(RequestImageAnalyze(image: image)),
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      return ImageAnalyzeDto.fromJson(response.data);
    } catch (e) {
      throw (e.toString());
    }
  }
}
