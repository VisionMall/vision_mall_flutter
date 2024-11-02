// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListDtoImpl _$$ProductListDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductListDtoImpl(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      status: $enumDecode(_$ProductStateEnumMap, json['status']),
      option: (json['option'] as List<dynamic>)
          .map((e) => ProductOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ProductListDtoImplToJson(
        _$ProductListDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
      'status': _$ProductStateEnumMap[instance.status]!,
      'option': instance.option,
      'content': instance.content,
    };

const _$ProductStateEnumMap = {
  ProductState.ON_SALE: 'ON_SALE',
  ProductState.SOLD_OUT: 'SOLD_OUT',
};
