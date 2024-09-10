import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'size.dart';

part 'item1view.g.dart';

@JsonSerializable()
class Item1view {
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
  @JsonKey(name: 'itemprice_discount')
  double? itempriceDiscount;
  List<String>? images;
  List<Size>? size;

  Item1view({
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
    this.itempriceDiscount,
    this.images,
    this.size,
  });

  factory Item1view.fromJson(Map<String, dynamic> json) {
    return _$Item1viewFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Item1viewToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Item1view) return false;
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
      itempriceDiscount.hashCode ^
      images.hashCode ^
      size.hashCode;
}
