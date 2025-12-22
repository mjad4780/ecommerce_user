import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_current_cart.g.dart';

@JsonSerializable()
class GetCurrentCart {
  String? status;
  int? data;

  GetCurrentCart({this.status, this.data});

  factory GetCurrentCart.fromJson(Map<String, dynamic> json) {
    return _$GetCurrentCartFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetCurrentCartToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! GetCurrentCart) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
