// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderDtoImpl _$$RequestOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderDtoImpl(
      productId: (json['productId'] as num).toInt(),
      optionId: (json['optionId'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      zipCode: json['zipCode'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$RequestOrderDtoImplToJson(
        _$RequestOrderDtoImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'optionId': instance.optionId,
      'count': instance.count,
      'zipCode': instance.zipCode,
      'address': instance.address,
    };
