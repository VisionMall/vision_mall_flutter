import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

enum OrderState {
  @JsonValue("PENDING")
  PENDING,
  @JsonValue("CONFIRMED")
  CONFIRMED,
  @JsonValue("PROCESSING")
  PROCESSING,
  @JsonValue("SHIPPED")
  SHIPPED,
  @JsonValue("DELIVERED")
  DELIVERED,
  @JsonValue("CANCELED")
  CANCELED,
  @JsonValue("RETURNED")
  RETURNED,
  @JsonValue("REFUNDED")
  REFUNDED
}

@freezed
class OrderDto with _$OrderDto {
  factory OrderDto({
    required int id,
    required int count,
    required OrderState status,
    required int productId,
    required int optionId,
    required String zipCode,
    required String address,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);
}
