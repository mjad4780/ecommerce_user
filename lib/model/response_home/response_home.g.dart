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
      itemtopselling: json['itemtopselling'] == null
          ? null
          : Itemtopselling.fromJson(
              json['itemtopselling'] as Map<String, dynamic>),
      categories: json['categories'] == null
          ? null
          : Categories.fromJson(json['categories'] as Map<String, dynamic>),
      item1view: json['item1view'] == null
          ? null
          : Item1view.fromJson(json['item1view'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseHomeToJson(ResponseHome instance) =>
    <String, dynamic>{
      'status': instance.status,
      'setting': instance.setting,
      'itemtopselling': instance.itemtopselling,
      'categories': instance.categories,
      'item1view': instance.item1view,
    };
