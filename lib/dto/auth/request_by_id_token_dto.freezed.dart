// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_by_id_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestByIdTokenDto _$RequestByIdTokenDtoFromJson(Map<String, dynamic> json) {
  return _RequestByIdTokenDto.fromJson(json);
}

/// @nodoc
mixin _$RequestByIdTokenDto {
  String get idToken => throw _privateConstructorUsedError;

  /// Serializes this RequestByIdTokenDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestByIdTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestByIdTokenDtoCopyWith<RequestByIdTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestByIdTokenDtoCopyWith<$Res> {
  factory $RequestByIdTokenDtoCopyWith(
          RequestByIdTokenDto value, $Res Function(RequestByIdTokenDto) then) =
      _$RequestByIdTokenDtoCopyWithImpl<$Res, RequestByIdTokenDto>;
  @useResult
  $Res call({String idToken});
}

/// @nodoc
class _$RequestByIdTokenDtoCopyWithImpl<$Res, $Val extends RequestByIdTokenDto>
    implements $RequestByIdTokenDtoCopyWith<$Res> {
  _$RequestByIdTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestByIdTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestByIdTokenDtoImplCopyWith<$Res>
    implements $RequestByIdTokenDtoCopyWith<$Res> {
  factory _$$RequestByIdTokenDtoImplCopyWith(_$RequestByIdTokenDtoImpl value,
          $Res Function(_$RequestByIdTokenDtoImpl) then) =
      __$$RequestByIdTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idToken});
}

/// @nodoc
class __$$RequestByIdTokenDtoImplCopyWithImpl<$Res>
    extends _$RequestByIdTokenDtoCopyWithImpl<$Res, _$RequestByIdTokenDtoImpl>
    implements _$$RequestByIdTokenDtoImplCopyWith<$Res> {
  __$$RequestByIdTokenDtoImplCopyWithImpl(_$RequestByIdTokenDtoImpl _value,
      $Res Function(_$RequestByIdTokenDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestByIdTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$RequestByIdTokenDtoImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestByIdTokenDtoImpl implements _RequestByIdTokenDto {
  _$RequestByIdTokenDtoImpl({required this.idToken});

  factory _$RequestByIdTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestByIdTokenDtoImplFromJson(json);

  @override
  final String idToken;

  @override
  String toString() {
    return 'RequestByIdTokenDto(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestByIdTokenDtoImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  /// Create a copy of RequestByIdTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestByIdTokenDtoImplCopyWith<_$RequestByIdTokenDtoImpl> get copyWith =>
      __$$RequestByIdTokenDtoImplCopyWithImpl<_$RequestByIdTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestByIdTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _RequestByIdTokenDto implements RequestByIdTokenDto {
  factory _RequestByIdTokenDto({required final String idToken}) =
      _$RequestByIdTokenDtoImpl;

  factory _RequestByIdTokenDto.fromJson(Map<String, dynamic> json) =
      _$RequestByIdTokenDtoImpl.fromJson;

  @override
  String get idToken;

  /// Create a copy of RequestByIdTokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestByIdTokenDtoImplCopyWith<_$RequestByIdTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
