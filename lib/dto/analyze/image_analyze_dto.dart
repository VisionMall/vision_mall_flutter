import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_analyze_dto.freezed.dart';
part 'image_analyze_dto.g.dart';

@freezed
class ImageAnalyzeDto with _$ImageAnalyzeDto {
  factory ImageAnalyzeDto({required String result}) = _ImageAnalyzeDto;

  factory ImageAnalyzeDto.fromJson(Map<String, dynamic> json) =>
      _$ImageAnalyzeDtoFromJson(json);
}
