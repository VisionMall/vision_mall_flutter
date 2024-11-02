// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDtoImpl _$$ReviewDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDtoImpl(
      rating: (json['rating'] as num).toInt(),
      content: json['content'] as String,
      productId: (json['productId'] as num).toInt(),
      optionId: (json['optionId'] as num).toInt(),
    );

Map<String, dynamic> _$$ReviewDtoImplToJson(_$ReviewDtoImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'content': instance.content,
      'productId': instance.productId,
      'optionId': instance.optionId,
    };
