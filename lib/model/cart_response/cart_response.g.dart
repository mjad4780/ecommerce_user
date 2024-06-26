// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) => CartResponse(
      status: json['status'] as String?,
      datacart: json['datacart'] == null
          ? null
          : Datacart.fromJson(json['datacart'] as Map<String, dynamic>),
      countprice: json['countprice'] == null
          ? null
          : Countprice.fromJson(json['countprice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartResponseToJson(CartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'datacart': instance.datacart,
      'countprice': instance.countprice,
    };
