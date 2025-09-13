// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************
Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      notfavorite: json['Notfavorite']?.toString(),
      itemId: json['item_id']?.toString(),
      itemName: json['item_name'] as String?,
      itemNameAr: json['item_name_ar'] as String?,
      itemDecs: json['item_decs'] as String?,
      itemDecsAr: json['item_decs_ar'] as String?,
      itemImage: json['item_image'] as String?,
      itemCount: json['item_count']?.toString(),
      itemActive: json['item_active']?.toString(),
      itemPrice: json['item_price']?.toString(),
      itemDiscount: json['item_discount']?.toString(),
      itemData: json['item_data'] as String?,
      itemCategories: json['item_categories']?.toString(),
      favorite: json['favorite']?.toString(),
      categoriesId: json['categories_id']?.toString(),
      categoriesName: json['categories_name'] as String?,
      itempriceDiscount: json['itemprice_discount']?.toString(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      size: (json['size'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'favorite': instance.favorite,
      'categories_id': instance.categoriesId,
      'categories_name': instance.categoriesName,
      'itemprice_discount': instance.itempriceDiscount,
      'Notfavorite': instance.notfavorite,
      'images': instance.images,
      'size': instance.size,
    };
