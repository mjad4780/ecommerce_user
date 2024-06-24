import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'item1view.g.dart';

@JsonSerializable()
class Item1view {
  final String? status;
  final List<Datum>? data;

  const Item1view({this.status, this.data});

  factory Item1view.fromJson(Map<String, dynamic> json) {
    return _$Item1viewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Item1viewToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Item1view) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
