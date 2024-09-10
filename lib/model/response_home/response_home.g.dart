// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseHome _$ResponseHomeFromJson(Map<String, dynamic> json) => ResponseHome(
      status: json['status'] as String?,
      item1view: (json['item1view'] as List<dynamic>?)
          ?.map((e) => Item1view.fromJson(e as Map<String, dynamic>))
          .toList(),
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      setting: (json['setting'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Setting.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$ResponseHomeToJson(ResponseHome instance) =>
    <String, dynamic>{
      'status': instance.status,
      'item1view': instance.item1view,
      'offers': instance.offers,
      'setting': instance.setting,
      'categories': instance.categories,
    };
