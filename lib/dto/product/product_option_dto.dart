import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_option_dto.freezed.dart';
part 'product_option_dto.g.dart';

@freezed
class ProductOptionDto with _$ProductOptionDto {
  factory ProductOptionDto({
    required int id,
    required String name,
    required int proudctId,
  }) = _ProductOptionDto;

  factory ProductOptionDto.fromJson(Map<String, dynamic> json) =>
      _$ProductOptionDtoFromJson(json);
}
