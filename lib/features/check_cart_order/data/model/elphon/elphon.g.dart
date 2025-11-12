// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elphon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Elphon _$ElphonFromJson(Map<String, dynamic> json) => Elphon(
      id: json['id'] as String?,
      object: json['object'] as String?,
      associatedObjects: (json['associated_objects'] as List<dynamic>?)
          ?.map((e) => AssociatedObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num?)?.toInt(),
      expires: (json['expires'] as num?)?.toInt(),
      livemode: json['livemode'] as bool?,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$ElphonToJson(Elphon instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'associated_objects': instance.associatedObjects,
      'created': instance.created,
      'expires': instance.expires,
      'livemode': instance.livemode,
      'secret': instance.secret,
    };
