import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'coupon_response.g.dart';

@JsonSerializable()
class CouponResponse {
  String? status;
  Data? data;

  CouponResponse({this.status, this.data});

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
  int get hashCode => status.hashCode ^ data.hashCode;
}
