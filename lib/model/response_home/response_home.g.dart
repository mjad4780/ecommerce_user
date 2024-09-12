// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseHome _$ResponseHomeFromJson(Map<String, dynamic> json) => ResponseHome(
      status: json['status'] as String?,
      setting: (json['setting'] as List<dynamic>?)
          ?.map((e) => Setting.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      item1view: json['item1view'] == null
          ? null
          : Item1view.fromJson(json['item1view'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseHomeToJson(ResponseHome instance) =>
    <String, dynamic>{
      'status': instance.status,
      'setting': instance.setting,
      'categories': instance.categories,
      'item1view': instance.item1view,
    };
