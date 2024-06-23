// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsResponse _$ItemsResponseFromJson(Map<String, dynamic> json) =>
    ItemsResponse(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemsResponseToJson(ItemsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
