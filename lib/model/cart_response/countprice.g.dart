// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countprice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Countprice _$CountpriceFromJson(Map<String, dynamic> json) => Countprice(
      totalprice: (json['totalprice'] as num?)?.toInt(),
      totalcount: json['totalcount'] as String?,
    );

Map<String, dynamic> _$CountpriceToJson(Countprice instance) =>
    <String, dynamic>{
      'totalprice': instance.totalprice,
      'totalcount': instance.totalcount,
    };
