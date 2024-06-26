// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersDetails _$OrdersDetailsFromJson(Map<String, dynamic> json) =>
    OrdersDetails(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersDetailsToJson(OrdersDetails instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
