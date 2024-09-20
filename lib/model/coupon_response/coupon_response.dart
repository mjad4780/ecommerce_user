import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'coupon_response.g.dart';

@JsonSerializable()
class CouponResponse {
  int? totalprice;
  Data? data;

  CouponResponse({this.totalprice, this.data});

  factory CouponResponse.fromJson(Map<String, dynamic> json) {
    return _$CouponResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CouponResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => totalprice.hashCode ^ data.hashCode;
}
