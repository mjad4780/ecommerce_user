// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item1view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item1view _$Item1viewFromJson(Map<String, dynamic> json) => Item1view(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Item1viewToJson(Item1view instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
