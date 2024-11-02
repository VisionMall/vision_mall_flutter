import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_refresh_token_dto.freezed.dart';
part 'request_refresh_token_dto.g.dart';

@freezed
class RequestRefreshTokenDto with _$RequestRefreshTokenDto {
  factory RequestRefreshTokenDto({
    required String refresh_token,
  }) = _RequestRefreshTokenDto;

  factory RequestRefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RequestRefreshTokenDtoFromJson(json);
}
