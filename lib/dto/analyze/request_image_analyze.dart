import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_image_analyze.freezed.dart';
part 'request_image_analyze.g.dart';

@freezed
class RequestImageAnalyze with _$RequestImageAnalyze {
  factory RequestImageAnalyze({required String image // BASE64로 인코딩 된 이미지 파일
      }) = _RequestImageAnalyze;

  factory RequestImageAnalyze.fromJson(Map<String, dynamic> json) =>
      _$RequestImageAnalyzeFromJson(json);
}
