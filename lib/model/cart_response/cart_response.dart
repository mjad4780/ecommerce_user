import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'countprice.dart';
import 'datacart.dart';

part 'cart_response.g.dart';

@JsonSerializable()
class CartResponse {
  String? status;
  Datacart? datacart;
  Countprice? countprice;

  CartResponse({this.status, this.datacart, this.countprice});

  factory CartResponse.fromJson(Map<String, dynamic> json) {
    return _$CartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CartResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ datacart.hashCode ^ countprice.hashCode;
}
