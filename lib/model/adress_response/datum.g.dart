// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdressData _$AdressDataFromJson(Map<String, dynamic> json) => AdressData(
      adressId: (json['adress_id'] as num?)?.toInt(),
      adressUserid: (json['adress_userid'] as num?)?.toInt(),
      adressCity: json['adress_city'] as String?,
      adressName: json['adress_name'] as String?,
      adressStreet: json['adress_street'] as String?,
      adressLat: json['adress_lat'] as String?,
      adressLong: json['adress_long'] as String?,
    );

Map<String, dynamic> _$AdressDataToJson(AdressData instance) =>
    <String, dynamic>{
      'adress_id': instance.adressId,
      'adress_userid': instance.adressUserid,
      'adress_city': instance.adressCity,
      'adress_name': instance.adressName,
      'adress_street': instance.adressStreet,
      'adress_lat': instance.adressLat,
      'adress_long': instance.adressLong,
    };
