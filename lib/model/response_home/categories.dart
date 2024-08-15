import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'categories.g.dart';

@JsonSerializable()
class Categories {
	final String? status;
	final List<Datum>? data;

	const Categories({this.status, this.data});

	factory Categories.fromJson(Map<String, dynamic> json) {
		return _$CategoriesFromJson(json);
	}

	Map<String, dynamic> toJson() => _$CategoriesToJson(this);

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Categories) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode => status.hashCode ^ data.hashCode;
}
