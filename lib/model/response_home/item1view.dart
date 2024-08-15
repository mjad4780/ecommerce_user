import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item1view.g.dart';

@JsonSerializable()
class Item1view {
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
	final List<dynamic>? images;
	final List<dynamic>? size;

	const Item1view({
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
			images.hashCode ^
			size.hashCode;
}
