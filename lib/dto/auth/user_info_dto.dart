import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto {
  factory UserInfoDto({
    required String email,
    required String name,
    required String picture,
    required String address,
    required List reviews,
    required List order,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) => _$UserInfoDtoFromJson(json);
}
