// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datacart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datacart _$DatacartFromJson(Map<String, dynamic> json) => Datacart(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatacartToJson(Datacart instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
