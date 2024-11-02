// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDtoImpl _$$UserInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDtoImpl(
      id: json['id'] as String,
      sub: json['sub'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      picture: json['picture'] as String,
      login_at: json['login_at'] as String,
      created_at: json['created_at'] as String,
    );

Map<String, dynamic> _$$UserInfoDtoImplToJson(_$UserInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sub': instance.sub,
      'email': instance.email,
      'name': instance.name,
      'picture': instance.picture,
      'login_at': instance.login_at,
      'created_at': instance.created_at,
    };
