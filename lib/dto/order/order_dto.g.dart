// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: (json['id'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      status: $enumDecode(_$OrderStateEnumMap, json['status']),
      productId: (json['productId'] as num).toInt(),
      optionId: (json['optionId'] as num).toInt(),
      zipCode: json['zipCode'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'status': _$OrderStateEnumMap[instance.status]!,
      'productId': instance.productId,
      'optionId': instance.optionId,
      'zipCode': instance.zipCode,
      'address': instance.address,
    };

const _$OrderStateEnumMap = {
  OrderState.PENDING: 'PENDING',
  OrderState.CONFIRMED: 'CONFIRMED',
  OrderState.PROCESSING: 'PROCESSING',
  OrderState.SHIPPED: 'SHIPPED',
  OrderState.DELIVERED: 'DELIVERED',
  OrderState.CANCELED: 'CANCELED',
  OrderState.RETURNED: 'RETURNED',
  OrderState.REFUNDED: 'REFUNDED',
};
