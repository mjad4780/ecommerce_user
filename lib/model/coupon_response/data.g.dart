// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      couponId: (json['coupon_id'] as num?)?.toInt(),
      couponName: json['coupon_name'] as String?,
      couponCount: (json['coupon_count'] as num?)?.toInt(),
      couponData: json['coupon_data'] as String?,
      couponDiscount: (json['coupon_discount'] as num?)?.toInt(),
      coponMaxuser: (json['copon_maxuser'] as num?)?.toInt(),
      coponEndDate: json['copon_endDate'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'coupon_id': instance.couponId,
      'coupon_name': instance.couponName,
      'coupon_count': instance.couponCount,
      'coupon_data': instance.couponData,
      'coupon_discount': instance.couponDiscount,
      'copon_maxuser': instance.coponMaxuser,
      'copon_endDate': instance.coponEndDate,
    };
