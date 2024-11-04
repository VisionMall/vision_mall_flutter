// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderDto _$RequestOrderDtoFromJson(Map<String, dynamic> json) {
  return _RequestOrderDto.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderDto {
  int get productId => throw _privateConstructorUsedError;
  int get optionId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderDtoCopyWith<RequestOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderDtoCopyWith<$Res> {
  factory $RequestOrderDtoCopyWith(
          RequestOrderDto value, $Res Function(RequestOrderDto) then) =
      _$RequestOrderDtoCopyWithImpl<$Res, RequestOrderDto>;
  @useResult
  $Res call(
      {int productId, int optionId, int count, String zipCode, String address});
}

/// @nodoc
class _$RequestOrderDtoCopyWithImpl<$Res, $Val extends RequestOrderDto>
    implements $RequestOrderDtoCopyWith<$Res> {
  _$RequestOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? optionId = null,
    Object? count = null,
    Object? zipCode = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      optionId: null == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderDtoImplCopyWith<$Res>
    implements $RequestOrderDtoCopyWith<$Res> {
  factory _$$RequestOrderDtoImplCopyWith(_$RequestOrderDtoImpl value,
          $Res Function(_$RequestOrderDtoImpl) then) =
      __$$RequestOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId, int optionId, int count, String zipCode, String address});
}

/// @nodoc
class __$$RequestOrderDtoImplCopyWithImpl<$Res>
    extends _$RequestOrderDtoCopyWithImpl<$Res, _$RequestOrderDtoImpl>
    implements _$$RequestOrderDtoImplCopyWith<$Res> {
  __$$RequestOrderDtoImplCopyWithImpl(
      _$RequestOrderDtoImpl _value, $Res Function(_$RequestOrderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? optionId = null,
    Object? count = null,
    Object? zipCode = null,
    Object? address = null,
  }) {
    return _then(_$RequestOrderDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      optionId: null == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderDtoImpl implements _RequestOrderDto {
  _$RequestOrderDtoImpl(
      {required this.productId,
      required this.optionId,
      required this.count,
      required this.zipCode,
      required this.address});

  factory _$RequestOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderDtoImplFromJson(json);

  @override
  final int productId;
  @override
  final int optionId;
  @override
  final int count;
  @override
  final String zipCode;
  @override
  final String address;

  @override
  String toString() {
    return 'RequestOrderDto(productId: $productId, optionId: $optionId, count: $count, zipCode: $zipCode, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, optionId, count, zipCode, address);

  /// Create a copy of RequestOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderDtoImplCopyWith<_$RequestOrderDtoImpl> get copyWith =>
      __$$RequestOrderDtoImplCopyWithImpl<_$RequestOrderDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderDto implements RequestOrderDto {
  factory _RequestOrderDto(
      {required final int productId,
      required final int optionId,
      required final int count,
      required final String zipCode,
      required final String address}) = _$RequestOrderDtoImpl;

  factory _RequestOrderDto.fromJson(Map<String, dynamic> json) =
      _$RequestOrderDtoImpl.fromJson;

  @override
  int get productId;
  @override
  int get optionId;
  @override
  int get count;
  @override
  String get zipCode;
  @override
  String get address;

  /// Create a copy of RequestOrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderDtoImplCopyWith<_$RequestOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
