import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'setting.g.dart';

@JsonSerializable()
class Setting {
	final String? status;
	final List<Datum>? data;

	const Setting({this.status, this.data});

	factory Setting.fromJson(Map<String, dynamic> json) {
		return _$SettingFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SettingToJson(this);

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Setting) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode => status.hashCode ^ data.hashCode;
}
