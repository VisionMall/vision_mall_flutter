import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_list_dto.freezed.dart';
part 'token_list_dto.g.dart';

@freezed
class TokenListDto with _$TokenListDto {
  factory TokenListDto({
    required String access_token,
    required String refresh_token,
  }) = _TokenListDto;

  factory TokenListDto.fromJson(Map<String, dynamic> json) =>
      _$TokenListDtoFromJson(json);
}
