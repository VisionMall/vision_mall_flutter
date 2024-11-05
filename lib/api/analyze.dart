import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vision_mall/data.dart';
import 'package:vision_mall/dto/analyze/image_analyze_dto.dart';
import 'package:vision_mall/dto/analyze/request_image_analyze.dart';

class AnalyzeApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio dio;

  AnalyzeApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/analyze',
    );
    dio = Dio(baseOptions);
  }

  Future<ImageAnalyzeDto> analyze(String imageUrl) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final filePath = '${tempDir.path}/tmp/image.jpg';

      // Ensure the directory exists
      await Directory('${tempDir.path}/tmp').create(recursive: true);

      // Download the image
      await dio.download(imageUrl, filePath);

      // Encode the image in base64
      final imageBase64 = base64Encode(File(filePath).readAsBytesSync());

      // Send the base64 image to the API
      final response = await dio.post(
        '/analyze',
        data: jsonEncode(
            RequestImageAnalyze(image: "data:image/jpg;base64,$imageBase64")),
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      print(response.data);
      return ImageAnalyzeDto.fromJson(response.data);
    } catch (e) {
      throw (e.toString());
    }
  }
}
