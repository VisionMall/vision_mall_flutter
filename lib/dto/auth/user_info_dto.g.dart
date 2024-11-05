// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDtoImpl _$$UserInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDtoImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      picture: json['picture'] as String,
      address: json['address'] as String?,
      reviews: json['reviews'] as List<dynamic>,
      order: json['order'] as List<dynamic>,
    );

Map<String, dynamic> _$$UserInfoDtoImplToJson(_$UserInfoDtoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'picture': instance.picture,
      'address': instance.address,
      'reviews': instance.reviews,
      'order': instance.order,
    };
