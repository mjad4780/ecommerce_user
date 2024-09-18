import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datacart.g.dart';

@JsonSerializable()
class Datacart {
  @JsonKey(name: 'items_prices')
  int? itemsPrices;
  @JsonKey(name: 'itemprice_discount')
  int? itempriceDiscount;
  int? countitems;
  @JsonKey(name: 'cart_id')
  int? cartId;
  @JsonKey(name: 'cart_itemid')
  int? cartItemid;
  @JsonKey(name: 'cart_userid')
  int? cartUserid;
  @JsonKey(name: 'cart_orders')
  int? cartOrders;
  @JsonKey(name: 'cart_size')
  String? cartSize;
  @JsonKey(name: 'cart_color')
  String? cartColor;
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
  @JsonKey(name: 'Size')
  int? size;

  Datacart({
    this.itemsPrices,
    this.itempriceDiscount,
    this.countitems,
    this.cartId,
    this.cartItemid,
    this.cartUserid,
    this.cartOrders,
    this.cartSize,
    this.cartColor,
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
    this.size,
  });

  factory Datacart.fromJson(Map<String, dynamic> json) {
    return _$DatacartFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DatacartToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Datacart) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      itemsPrices.hashCode ^
      itempriceDiscount.hashCode ^
      countitems.hashCode ^
      cartId.hashCode ^
      cartItemid.hashCode ^
      cartUserid.hashCode ^
      cartOrders.hashCode ^
      cartSize.hashCode ^
      cartColor.hashCode ^
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
      size.hashCode;
}
