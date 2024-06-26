import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'coupon_id')
  int? couponId;
  @JsonKey(name: 'coupon_name')
  String? couponName;
  @JsonKey(name: 'coupon_count')
  int? couponCount;
  @JsonKey(name: 'coupon_data')
  String? couponData;
  @JsonKey(name: 'coupon_discount')
  int? couponDiscount;
  @JsonKey(name: 'copon_maxuser')
  int? coponMaxuser;
  @JsonKey(name: 'copon_endDate')
  String? coponEndDate;

  Data({
    this.couponId,
    this.couponName,
    this.couponCount,
    this.couponData,
    this.couponDiscount,
    this.coponMaxuser,
    this.coponEndDate,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Data) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      couponId.hashCode ^
      couponName.hashCode ^
      couponCount.hashCode ^
      couponData.hashCode ^
      couponDiscount.hashCode ^
      coponMaxuser.hashCode ^
      coponEndDate.hashCode;
}
