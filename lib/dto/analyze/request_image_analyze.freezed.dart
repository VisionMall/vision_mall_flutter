// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_image_analyze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestImageAnalyze _$RequestImageAnalyzeFromJson(Map<String, dynamic> json) {
  return _RequestImageAnalyze.fromJson(json);
}

/// @nodoc
mixin _$RequestImageAnalyze {
  String get image => throw _privateConstructorUsedError;

  /// Serializes this RequestImageAnalyze to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestImageAnalyze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestImageAnalyzeCopyWith<RequestImageAnalyze> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestImageAnalyzeCopyWith<$Res> {
  factory $RequestImageAnalyzeCopyWith(
          RequestImageAnalyze value, $Res Function(RequestImageAnalyze) then) =
      _$RequestImageAnalyzeCopyWithImpl<$Res, RequestImageAnalyze>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$RequestImageAnalyzeCopyWithImpl<$Res, $Val extends RequestImageAnalyze>
    implements $RequestImageAnalyzeCopyWith<$Res> {
  _$RequestImageAnalyzeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestImageAnalyze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestImageAnalyzeImplCopyWith<$Res>
    implements $RequestImageAnalyzeCopyWith<$Res> {
  factory _$$RequestImageAnalyzeImplCopyWith(_$RequestImageAnalyzeImpl value,
          $Res Function(_$RequestImageAnalyzeImpl) then) =
      __$$RequestImageAnalyzeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$RequestImageAnalyzeImplCopyWithImpl<$Res>
    extends _$RequestImageAnalyzeCopyWithImpl<$Res, _$RequestImageAnalyzeImpl>
    implements _$$RequestImageAnalyzeImplCopyWith<$Res> {
  __$$RequestImageAnalyzeImplCopyWithImpl(_$RequestImageAnalyzeImpl _value,
      $Res Function(_$RequestImageAnalyzeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestImageAnalyze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RequestImageAnalyzeImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestImageAnalyzeImpl implements _RequestImageAnalyze {
  _$RequestImageAnalyzeImpl({required this.image});

  factory _$RequestImageAnalyzeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestImageAnalyzeImplFromJson(json);

  @override
  final String image;

  @override
  String toString() {
    return 'RequestImageAnalyze(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestImageAnalyzeImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of RequestImageAnalyze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestImageAnalyzeImplCopyWith<_$RequestImageAnalyzeImpl> get copyWith =>
      __$$RequestImageAnalyzeImplCopyWithImpl<_$RequestImageAnalyzeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestImageAnalyzeImplToJson(
      this,
    );
  }
}

abstract class _RequestImageAnalyze implements RequestImageAnalyze {
  factory _RequestImageAnalyze({required final String image}) =
      _$RequestImageAnalyzeImpl;

  factory _RequestImageAnalyze.fromJson(Map<String, dynamic> json) =
      _$RequestImageAnalyzeImpl.fromJson;

  @override
  String get image;

  /// Create a copy of RequestImageAnalyze
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestImageAnalyzeImplCopyWith<_$RequestImageAnalyzeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
