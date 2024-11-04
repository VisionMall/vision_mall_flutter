import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vision_mall/dto/product/product_option_dto.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

enum ProductState {
  @JsonValue('ON_SALE')
  ON_SALE,
  @JsonValue('SOLD_OUT')
  SOLD_OUT
}

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required int id,
    required int price,
    required int rating,
    required ProductState status,
    required List<ProductOptionDto> option,
    required String title,
    required String content,
    required List<String> images,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}
