// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseCart _$ResponseCartFromJson(Map<String, dynamic> json) => ResponseCart(
      status: json['status'] as String?,
      datacart: (json['datacart'] as List<dynamic>?)
          ?.map((e) => Datacart.fromJson(e as Map<String, dynamic>))
          .toList(),
      totapriceOffers: (json['TotapriceOffers'] as num?)?.toInt(),
      totaprice: (json['Totaprice'] as num?)?.toInt(),
      counts: (json['counts'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResponseCartToJson(ResponseCart instance) =>
    <String, dynamic>{
      'status': instance.status,
      'datacart': instance.datacart,
      'TotapriceOffers': instance.totapriceOffers,
      'Totaprice': instance.totaprice,
      'counts': instance.counts,
    };
