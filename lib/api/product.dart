import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vision_mall/dto/product/product_dto.dart';

class ProductApi {
  final String baseUrl = dotenv.get('PROJECT_URL');
  late final Dio dio;

  ProductApi() {
    final baseOptions = BaseOptions(
      baseUrl: '$baseUrl/product',
    );
    dio = Dio(baseOptions);
  }

  Future<List<ProductDto>> getProducts() async {
    try {
      final response = await dio.get('/products');
      return response.data
          .map<ProductDto>((data) => ProductDto.fromJson(data))
          .toList();
    } catch (e) {
      throw (e.toString());
    }
  }
}
