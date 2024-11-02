// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_refresh_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRefreshTokenDto _$RequestRefreshTokenDtoFromJson(
    Map<String, dynamic> json) {
  return _RequestRefreshTokenDto.fromJson(json);
}

/// @nodoc
mixin _$RequestRefreshTokenDto {
  String get refresh_token => throw _privateConstructorUsedError;

  /// Serializes this RequestRefreshTokenDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRefreshTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRefreshTokenDtoCopyWith<RequestRefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRefreshTokenDtoCopyWith<$Res> {
  factory $RequestRefreshTokenDtoCopyWith(RequestRefreshTokenDto value,
          $Res Function(RequestRefreshTokenDto) then) =
      _$RequestRefreshTokenDtoCopyWithImpl<$Res, RequestRefreshTokenDto>;
  @useResult
  $Res call({String refresh_token});
}

/// @nodoc
class _$RequestRefreshTokenDtoCopyWithImpl<$Res,
        $Val extends RequestRefreshTokenDto>
    implements $RequestRefreshTokenDtoCopyWith<$Res> {
  _$RequestRefreshTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRefreshTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRefreshTokenDtoImplCopyWith<$Res>
    implements $RequestRefreshTokenDtoCopyWith<$Res> {
  factory _$$RequestRefreshTokenDtoImplCopyWith(
          _$RequestRefreshTokenDtoImpl value,
          $Res Function(_$RequestRefreshTokenDtoImpl) then) =
      __$$RequestRefreshTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refresh_token});
}

/// @nodoc
class __$$RequestRefreshTokenDtoImplCopyWithImpl<$Res>
    extends _$RequestRefreshTokenDtoCopyWithImpl<$Res,
        _$RequestRefreshTokenDtoImpl>
    implements _$$RequestRefreshTokenDtoImplCopyWith<$Res> {
  __$$RequestRefreshTokenDtoImplCopyWithImpl(
      _$RequestRefreshTokenDtoImpl _value,
      $Res Function(_$RequestRefreshTokenDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRefreshTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh_token = null,
  }) {
    return _then(_$RequestRefreshTokenDtoImpl(
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRefreshTokenDtoImpl implements _RequestRefreshTokenDto {
  _$RequestRefreshTokenDtoImpl({required this.refresh_token});

  factory _$RequestRefreshTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRefreshTokenDtoImplFromJson(json);

  @override
  final String refresh_token;

  @override
  String toString() {
    return 'RequestRefreshTokenDto(refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRefreshTokenDtoImpl &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refresh_token);

  /// Create a copy of RequestRefreshTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRefreshTokenDtoImplCopyWith<_$RequestRefreshTokenDtoImpl>
      get copyWith => __$$RequestRefreshTokenDtoImplCopyWithImpl<
          _$RequestRefreshTokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRefreshTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _RequestRefreshTokenDto implements RequestRefreshTokenDto {
  factory _RequestRefreshTokenDto({required final String refresh_token}) =
      _$RequestRefreshTokenDtoImpl;

  factory _RequestRefreshTokenDto.fromJson(Map<String, dynamic> json) =
      _$RequestRefreshTokenDtoImpl.fromJson;

  @override
  String get refresh_token;

  /// Create a copy of RequestRefreshTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRefreshTokenDtoImplCopyWith<_$RequestRefreshTokenDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
