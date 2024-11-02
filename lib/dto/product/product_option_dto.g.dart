// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_option_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductOptionDtoImpl _$$ProductOptionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductOptionDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      proudctId: (json['proudctId'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductOptionDtoImplToJson(
        _$ProductOptionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'proudctId': instance.proudctId,
    };
