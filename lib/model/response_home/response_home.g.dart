// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseHome _$ResponseHomeFromJson(Map<String, dynamic> json) => ResponseHome(
      status: json['status'] as String?,
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : Categories.fromJson(json['categories'] as Map<String, dynamic>),
      itemtopselling: (json['itemtopselling'] as List<dynamic>?)
          ?.map((e) => Itemtopselling.fromJson(e as Map<String, dynamic>))
          .toList(),
      item1view: (json['item1view'] as List<dynamic>?)
          ?.map((e) => Item1view.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseHomeToJson(ResponseHome instance) =>
    <String, dynamic>{
      'status': instance.status,
      'setting': instance.setting,
      'categories': instance.categories,
      'itemtopselling': instance.itemtopselling,
      'item1view': instance.item1view,
    };
