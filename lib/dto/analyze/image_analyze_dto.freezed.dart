// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_analyze_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageAnalyzeDto _$ImageAnalyzeDtoFromJson(Map<String, dynamic> json) {
  return _ImageAnalyzeDto.fromJson(json);
}

/// @nodoc
mixin _$ImageAnalyzeDto {
  String get result => throw _privateConstructorUsedError;

  /// Serializes this ImageAnalyzeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageAnalyzeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageAnalyzeDtoCopyWith<ImageAnalyzeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAnalyzeDtoCopyWith<$Res> {
  factory $ImageAnalyzeDtoCopyWith(
          ImageAnalyzeDto value, $Res Function(ImageAnalyzeDto) then) =
      _$ImageAnalyzeDtoCopyWithImpl<$Res, ImageAnalyzeDto>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$ImageAnalyzeDtoCopyWithImpl<$Res, $Val extends ImageAnalyzeDto>
    implements $ImageAnalyzeDtoCopyWith<$Res> {
  _$ImageAnalyzeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageAnalyzeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageAnalyzeDtoImplCopyWith<$Res>
    implements $ImageAnalyzeDtoCopyWith<$Res> {
  factory _$$ImageAnalyzeDtoImplCopyWith(_$ImageAnalyzeDtoImpl value,
          $Res Function(_$ImageAnalyzeDtoImpl) then) =
      __$$ImageAnalyzeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$ImageAnalyzeDtoImplCopyWithImpl<$Res>
    extends _$ImageAnalyzeDtoCopyWithImpl<$Res, _$ImageAnalyzeDtoImpl>
    implements _$$ImageAnalyzeDtoImplCopyWith<$Res> {
  __$$ImageAnalyzeDtoImplCopyWithImpl(
      _$ImageAnalyzeDtoImpl _value, $Res Function(_$ImageAnalyzeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageAnalyzeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ImageAnalyzeDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageAnalyzeDtoImpl implements _ImageAnalyzeDto {
  _$ImageAnalyzeDtoImpl({required this.result});

  factory _$ImageAnalyzeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageAnalyzeDtoImplFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'ImageAnalyzeDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAnalyzeDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of ImageAnalyzeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageAnalyzeDtoImplCopyWith<_$ImageAnalyzeDtoImpl> get copyWith =>
      __$$ImageAnalyzeDtoImplCopyWithImpl<_$ImageAnalyzeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageAnalyzeDtoImplToJson(
      this,
    );
  }
}

abstract class _ImageAnalyzeDto implements ImageAnalyzeDto {
  factory _ImageAnalyzeDto({required final String result}) =
      _$ImageAnalyzeDtoImpl;

  factory _ImageAnalyzeDto.fromJson(Map<String, dynamic> json) =
      _$ImageAnalyzeDtoImpl.fromJson;

  @override
  String get result;

  /// Create a copy of ImageAnalyzeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageAnalyzeDtoImplCopyWith<_$ImageAnalyzeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
