import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'response_items.g.dart';

@JsonSerializable()
class ResponseItems {
  List<Datum>? data;

  ResponseItems({this.data});

  factory ResponseItems.fromJson(Map<String, dynamic> json) {
    return _$ResponseItemsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseItemsToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ResponseItems) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => data.hashCode;
}
