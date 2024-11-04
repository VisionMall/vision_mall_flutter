// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      status: $enumDecode(_$ProductStateEnumMap, json['status']),
      option: (json['option'] as List<dynamic>)
          .map((e) => ProductOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      content: json['content'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'rating': instance.rating,
      'status': _$ProductStateEnumMap[instance.status]!,
      'option': instance.option,
      'title': instance.title,
      'content': instance.content,
      'images': instance.images,
    };

const _$ProductStateEnumMap = {
  ProductState.ON_SALE: 'ON_SALE',
  ProductState.SOLD_OUT: 'SOLD_OUT',
};
