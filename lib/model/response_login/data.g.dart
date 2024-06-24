// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userId: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      userEmail: json['user_email'] as String?,
      userPhone: (json['user_phone'] as num?)?.toInt(),
      userVerymycode: (json['user_verymycode'] as num?)?.toInt(),
      userImprove: (json['user_improve'] as num?)?.toInt(),
      userCreate: json['user_create'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'user_phone': instance.userPhone,
      'user_verymycode': instance.userVerymycode,
      'user_improve': instance.userImprove,
      'user_create': instance.userCreate,
      'password': instance.password,
    };
