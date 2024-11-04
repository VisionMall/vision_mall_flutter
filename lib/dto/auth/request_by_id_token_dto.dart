import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_by_id_token_dto.freezed.dart';
part 'request_by_id_token_dto.g.dart';

@freezed
class RequestByIdTokenDto with _$RequestByIdTokenDto {
  factory RequestByIdTokenDto({
    required String idToken,
  }) = _RequestByIdTokenDto;

  factory RequestByIdTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RequestByIdTokenDtoFromJson(json);
}
