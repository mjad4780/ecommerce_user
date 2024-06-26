import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'countprice.g.dart';

@JsonSerializable()
class Countprice {
  int? totalprice;
  String? totalcount;

  Countprice({this.totalprice, this.totalcount});

  factory Countprice.fromJson(Map<String, dynamic> json) {
    return _$CountpriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountpriceToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Countprice) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => totalprice.hashCode ^ totalcount.hashCode;
}
