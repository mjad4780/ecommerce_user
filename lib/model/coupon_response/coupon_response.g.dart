// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponResponse _$CouponResponseFromJson(Map<String, dynamic> json) =>
    CouponResponse(
      totalprice: (json['TotalPrice'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CouponResponseToJson(CouponResponse instance) =>
    <String, dynamic>{
      'totalprice': instance.totalprice,
      'data': instance.data,
    };
