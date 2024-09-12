// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item1view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item1view _$Item1viewFromJson(Map<String, dynamic> json) => Item1view(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Item1viewToJson(Item1view instance) => <String, dynamic>{
      'data': instance.data,
    };
