// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      itemId: (json['item_id'] as num?)?.toInt(),
      itemName: json['item_name'] as String?,
      itemNameAr: json['item_name_ar'] as String?,
      itemDecs: json['item_decs'] as String?,
      itemDecsAr: json['item_decs_ar'] as String?,
      itemImage: json['item_image'] as String?,
      itemCount: (json['item_count'] as num?)?.toInt(),
      itemActive: (json['item_active'] as num?)?.toInt(),
      itemPrice: (json['item_price'] as num?)?.toInt(),
      itemDiscount: (json['item_discount'] as num?)?.toInt(),
      itemData: json['item_data'] as String?,
      itemCategories: (json['item_categories'] as num?)?.toInt(),
      categoriesId: (json['categories_id'] as num?)?.toInt(),
      categoriesName: json['categories_name'] as String?,
      categoriesNameAr: json['categories_name_ar'] as String?,
      categoriesImage: json['categories_Image'] as String?,
      categoriesData: json['categories_Data'] as String?,
      itempriceDiscount: (json['itemprice_discount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'item_name_ar': instance.itemNameAr,
      'item_decs': instance.itemDecs,
      'item_decs_ar': instance.itemDecsAr,
      'item_image': instance.itemImage,
      'item_count': instance.itemCount,
      'item_active': instance.itemActive,
      'item_price': instance.itemPrice,
      'item_discount': instance.itemDiscount,
      'item_data': instance.itemData,
      'item_categories': instance.itemCategories,
      'categories_id': instance.categoriesId,
      'categories_name': instance.categoriesName,
      'categories_name_ar': instance.categoriesNameAr,
      'categories_Image': instance.categoriesImage,
      'categories_Data': instance.categoriesData,
      'itemprice_discount': instance.itempriceDiscount,
    };
