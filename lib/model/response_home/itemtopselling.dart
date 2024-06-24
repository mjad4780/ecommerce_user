import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'itemtopselling.g.dart';

@JsonSerializable()
class Itemtopselling {
  final String? status;
  final List<Datum>? data;

  const Itemtopselling({this.status, this.data});

  factory Itemtopselling.fromJson(Map<String, dynamic> json) {
    return _$ItemtopsellingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemtopsellingToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Itemtopselling) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
