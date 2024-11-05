import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vision_mall/dto/review/review_dto.dart';

class ReviewApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio dio;

  ProductApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/analyze',
    );
    dio = Dio(baseOptions);
  }

  Future<ReviewDto> postAnalyze(
    int rating,
    String content,
    int productId,
  ) async {
    try {
      final response = await dio.post(
        '/analyze',
        data: jsonEncode(ReviewDto(
          rating: rating,
          content: content,
          productId: productId,
          optionId: 0,
        )),
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
