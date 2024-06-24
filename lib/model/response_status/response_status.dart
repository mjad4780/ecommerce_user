import 'package:json_annotation/json_annotation.dart';
part 'response_status.g.dart';

@JsonSerializable()
class ResponseStatus {
  final String? status;

  ResponseStatus({
    required this.status,
  });

  factory ResponseStatus.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseStatusFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseStatusToJson(this);
}
