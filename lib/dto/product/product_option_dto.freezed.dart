// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_option_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductOptionDto _$ProductOptionDtoFromJson(Map<String, dynamic> json) {
  return _ProductOptionDto.fromJson(json);
}

/// @nodoc
mixin _$ProductOptionDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get proudctId => throw _privateConstructorUsedError;

  /// Serializes this ProductOptionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductOptionDtoCopyWith<ProductOptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionDtoCopyWith<$Res> {
  factory $ProductOptionDtoCopyWith(
          ProductOptionDto value, $Res Function(ProductOptionDto) then) =
      _$ProductOptionDtoCopyWithImpl<$Res, ProductOptionDto>;
  @useResult
  $Res call({int id, String name, int proudctId});
}

/// @nodoc
class _$ProductOptionDtoCopyWithImpl<$Res, $Val extends ProductOptionDto>
    implements $ProductOptionDtoCopyWith<$Res> {
  _$ProductOptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? proudctId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      proudctId: null == proudctId
          ? _value.proudctId
          : proudctId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOptionDtoImplCopyWith<$Res>
    implements $ProductOptionDtoCopyWith<$Res> {
  factory _$$ProductOptionDtoImplCopyWith(_$ProductOptionDtoImpl value,
          $Res Function(_$ProductOptionDtoImpl) then) =
      __$$ProductOptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int proudctId});
}

/// @nodoc
class __$$ProductOptionDtoImplCopyWithImpl<$Res>
    extends _$ProductOptionDtoCopyWithImpl<$Res, _$ProductOptionDtoImpl>
    implements _$$ProductOptionDtoImplCopyWith<$Res> {
  __$$ProductOptionDtoImplCopyWithImpl(_$ProductOptionDtoImpl _value,
      $Res Function(_$ProductOptionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? proudctId = null,
  }) {
    return _then(_$ProductOptionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      proudctId: null == proudctId
          ? _value.proudctId
          : proudctId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOptionDtoImpl implements _ProductOptionDto {
  _$ProductOptionDtoImpl(
      {required this.id, required this.name, required this.proudctId});

  factory _$ProductOptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOptionDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int proudctId;

  @override
  String toString() {
    return 'ProductOptionDto(id: $id, name: $name, proudctId: $proudctId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.proudctId, proudctId) ||
                other.proudctId == proudctId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, proudctId);

  /// Create a copy of ProductOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOptionDtoImplCopyWith<_$ProductOptionDtoImpl> get copyWith =>
      __$$ProductOptionDtoImplCopyWithImpl<_$ProductOptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOptionDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductOptionDto implements ProductOptionDto {
  factory _ProductOptionDto(
      {required final int id,
      required final String name,
      required final int proudctId}) = _$ProductOptionDtoImpl;

  factory _ProductOptionDto.fromJson(Map<String, dynamic> json) =
      _$ProductOptionDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get proudctId;

  /// Create a copy of ProductOptionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductOptionDtoImplCopyWith<_$ProductOptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
