import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'pending_response.g.dart';

@JsonSerializable()
class PendingResponse {
  final String? status;
  final List<Datum>? data;

  const PendingResponse({this.status, this.data});

  factory PendingResponse.fromJson(Map<String, dynamic> json) {
    return _$PendingResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PendingResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PendingResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
