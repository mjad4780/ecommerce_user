import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'datacart.g.dart';

@JsonSerializable()
class Datacart {
  String? status;
  List<Datum>? data;

  Datacart({this.status, this.data});

  factory Datacart.fromJson(Map<String, dynamic> json) {
    return _$DatacartFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DatacartToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datacart) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
