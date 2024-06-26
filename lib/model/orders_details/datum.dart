import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'items_prices')
  final int? itemsPrices;
  @JsonKey(name: 'itemprice_discount')
  final int? itempriceDiscount;
  final int? countitems;
  @JsonKey(name: 'cart_id')
  final int? cartId;
  @JsonKey(name: 'cart_itemid')
  final int? cartItemid;
  @JsonKey(name: 'cart_userid')
  final int? cartUserid;
  @JsonKey(name: 'cart_orders')
  final int? cartOrders;
  @JsonKey(name: 'item_id')
  final int? itemId;
  @JsonKey(name: 'item_name')
  final String? itemName;
  @JsonKey(name: 'item_name_ar')
  final String? itemNameAr;
  @JsonKey(name: 'item_decs')
  final String? itemDecs;
  @JsonKey(name: 'item_decs_ar')
  final String? itemDecsAr;
  @JsonKey(name: 'item_image')
  final String? itemImage;
  @JsonKey(name: 'item_count')
  final int? itemCount;
  @JsonKey(name: 'item_active')
  final int? itemActive;
  @JsonKey(name: 'item_price')
  final int? itemPrice;
  @JsonKey(name: 'item_discount')
  final int? itemDiscount;
  @JsonKey(name: 'item_data')
  final String? itemData;
  @JsonKey(name: 'item_categories')
  final int? itemCategories;
  @JsonKey(name: 'Size')
  final String? size;

  const Datum({
    this.itemsPrices,
    this.itempriceDiscount,
    this.countitems,
    this.cartId,
    this.cartItemid,
    this.cartUserid,
    this.cartOrders,
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
      itemsPrices.hashCode ^
      itempriceDiscount.hashCode ^
      countitems.hashCode ^
      cartId.hashCode ^
      cartItemid.hashCode ^
      cartUserid.hashCode ^
      cartOrders.hashCode ^
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
