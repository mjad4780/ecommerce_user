import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'items_response.g.dart';

@JsonSerializable()
class ItemsResponse {
  String? status;
  List<Datum>? data;

  ItemsResponse({this.status, this.data});

  factory ItemsResponse.fromJson(Map<String, dynamic> json) {
    return _$ItemsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemsResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ItemsResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
