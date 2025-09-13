// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adress_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdressResponse _$AdressResponseFromJson(Map<String, dynamic> json) =>
    AdressResponse(
      status: json['status'] as String?,
      messege: json['messege'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AdressData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdressResponseToJson(AdressResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
