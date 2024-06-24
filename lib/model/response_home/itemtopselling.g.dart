// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemtopselling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Itemtopselling _$ItemtopsellingFromJson(Map<String, dynamic> json) =>
    Itemtopselling(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemtopsellingToJson(Itemtopselling instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
