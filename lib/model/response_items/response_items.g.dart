// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseItems _$ResponseItemsFromJson(Map<String, dynamic> json) =>
    ResponseItems(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseItemsToJson(ResponseItems instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
