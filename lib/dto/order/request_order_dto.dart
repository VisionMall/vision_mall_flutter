import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_order_dto.freezed.dart';
part 'request_order_dto.g.dart';

@freezed
class RequestOrderDto with _$RequestOrderDto {
  factory RequestOrderDto({
    required int productId,
    required int optionId,
    required int count,
    required String zipCode,
    required String address,
  }) = _RequestOrderDto;

  factory RequestOrderDto.fromJson(Map<String, dynamic> json) =>
      _$RequestOrderDtoFromJson(json);
}
