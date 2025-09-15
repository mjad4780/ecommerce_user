// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingResponse _$PendingResponseFromJson(Map<String, dynamic> json) =>
    PendingResponse(
      status: json['status'] as String?,
      messege: json['messege'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      messege: json['messege'] as String?,
    );

Map<String, dynamic> _$PendingResponseToJson(PendingResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'messege': instance.messege,
      'data': instance.data,
    };
