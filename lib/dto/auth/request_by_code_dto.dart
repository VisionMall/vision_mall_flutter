import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_by_code_dto.freezed.dart';
part 'request_by_code_dto.g.dart';

@freezed
class RequestByCodeDto with _$RequestByCodeDto {
  factory RequestByCodeDto({
    required String code,
  }) = _RequestByCodeDto;

  factory RequestByCodeDto.fromJson(Map<String, dynamic> json) =>
      _$RequestByCodeDtoFromJson(json);
}
