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
class ProductListDto with _$ProductListDto {
  factory ProductListDto({
    required int id,
    required int price,
    required int rating,
    required ProductState status,
    required List<ProductOptionDto> option,
    required String content,
  }) = _ProductListDto;

  factory ProductListDto.fromJson(Map<String, dynamic> json) =>
      _$ProductListDtoFromJson(json);
}
