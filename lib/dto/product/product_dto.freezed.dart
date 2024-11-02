// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListDto _$ProductListDtoFromJson(Map<String, dynamic> json) {
  return _ProductListDto.fromJson(json);
}

/// @nodoc
mixin _$ProductListDto {
  int get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  ProductState get status => throw _privateConstructorUsedError;
  List<ProductOptionDto> get option => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this ProductListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListDtoCopyWith<ProductListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDtoCopyWith<$Res> {
  factory $ProductListDtoCopyWith(
          ProductListDto value, $Res Function(ProductListDto) then) =
      _$ProductListDtoCopyWithImpl<$Res, ProductListDto>;
  @useResult
  $Res call(
      {int id,
      int price,
      int rating,
      ProductState status,
      List<ProductOptionDto> option,
      String content});
}

/// @nodoc
class _$ProductListDtoCopyWithImpl<$Res, $Val extends ProductListDto>
    implements $ProductListDtoCopyWith<$Res> {
  _$ProductListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? rating = null,
    Object? status = null,
    Object? option = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductState,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionDto>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListDtoImplCopyWith<$Res>
    implements $ProductListDtoCopyWith<$Res> {
  factory _$$ProductListDtoImplCopyWith(_$ProductListDtoImpl value,
          $Res Function(_$ProductListDtoImpl) then) =
      __$$ProductListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int price,
      int rating,
      ProductState status,
      List<ProductOptionDto> option,
      String content});
}

/// @nodoc
class __$$ProductListDtoImplCopyWithImpl<$Res>
    extends _$ProductListDtoCopyWithImpl<$Res, _$ProductListDtoImpl>
    implements _$$ProductListDtoImplCopyWith<$Res> {
  __$$ProductListDtoImplCopyWithImpl(
      _$ProductListDtoImpl _value, $Res Function(_$ProductListDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? rating = null,
    Object? status = null,
    Object? option = null,
    Object? content = null,
  }) {
    return _then(_$ProductListDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductState,
      option: null == option
          ? _value._option
          : option // ignore: cast_nullable_to_non_nullable
              as List<ProductOptionDto>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListDtoImpl implements _ProductListDto {
  _$ProductListDtoImpl(
      {required this.id,
      required this.price,
      required this.rating,
      required this.status,
      required final List<ProductOptionDto> option,
      required this.content})
      : _option = option;

  factory _$ProductListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int price;
  @override
  final int rating;
  @override
  final ProductState status;
  final List<ProductOptionDto> _option;
  @override
  List<ProductOptionDto> get option {
    if (_option is EqualUnmodifiableListView) return _option;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_option);
  }

  @override
  final String content;

  @override
  String toString() {
    return 'ProductListDto(id: $id, price: $price, rating: $rating, status: $status, option: $option, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._option, _option) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, rating, status,
      const DeepCollectionEquality().hash(_option), content);

  /// Create a copy of ProductListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListDtoImplCopyWith<_$ProductListDtoImpl> get copyWith =>
      __$$ProductListDtoImplCopyWithImpl<_$ProductListDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductListDto implements ProductListDto {
  factory _ProductListDto(
      {required final int id,
      required final int price,
      required final int rating,
      required final ProductState status,
      required final List<ProductOptionDto> option,
      required final String content}) = _$ProductListDtoImpl;

  factory _ProductListDto.fromJson(Map<String, dynamic> json) =
      _$ProductListDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get price;
  @override
  int get rating;
  @override
  ProductState get status;
  @override
  List<ProductOptionDto> get option;
  @override
  String get content;

  /// Create a copy of ProductListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListDtoImplCopyWith<_$ProductListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
