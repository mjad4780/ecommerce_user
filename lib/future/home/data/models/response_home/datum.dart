import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'size.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'item_id')
  int? itemId;
  @JsonKey(name: 'item_name')
  String? itemName;
  @JsonKey(name: 'item_name_ar')
  String? itemNameAr;
  @JsonKey(name: 'item_decs')
  String? itemDecs;
  @JsonKey(name: 'item_decs_ar')
  String? itemDecsAr;
  @JsonKey(name: 'item_image')
  String? itemImage;
  @JsonKey(name: 'item_count')
  int? itemCount;
  @JsonKey(name: 'item_active')
  int? itemActive;
  @JsonKey(name: 'item_price')
  int? itemPrice;
  @JsonKey(name: 'item_discount')
  int? itemDiscount;
  @JsonKey(name: 'item_data')
  String? itemData;
  @JsonKey(name: 'item_categories')
  int? itemCategories;
  int? favorite;
  @JsonKey(name: 'categories_id')
  int? categoriesId;
  @JsonKey(name: 'categories_name')
  String? categoriesName;
  @JsonKey(name: 'itemprice_discount')
  double? itempriceDiscount;
  @JsonKey(name: 'Notfavorite')
  int? notfavorite;
  List<String>? images;
  List<Size>? size;

  Datum({
    this.notfavorite,
    this.itemId,
    this.itemName,
    this.itemNameAr,
    this.itemDecs,
    this.itemDecsAr,
    this.itemImage,
    this.itemCount,
    this.itemActive,
    this.itemPrice,
    this.itemDiscount,
    this.itemData,
    this.itemCategories,
    this.favorite,
    this.categoriesId,
    this.categoriesName,
    this.itempriceDiscount,
    this.images,
    this.size,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datum) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      itemId.hashCode ^
      itemName.hashCode ^
      itemNameAr.hashCode ^
      itemDecs.hashCode ^
      itemDecsAr.hashCode ^
      itemImage.hashCode ^
      itemCount.hashCode ^
      itemActive.hashCode ^
      itemPrice.hashCode ^
      itemDiscount.hashCode ^
      itemData.hashCode ^
      itemCategories.hashCode ^
      favorite.hashCode ^
      categoriesId.hashCode ^
      categoriesName.hashCode ^
      itempriceDiscount.hashCode ^
      images.hashCode ^
      size.hashCode;
}
