// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCurrentCart _$GetCurrentCartFromJson(Map<String, dynamic> json) =>
    GetCurrentCart(
      status: json['status'] as String?,
      data: (json['data'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCurrentCartToJson(GetCurrentCart instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
