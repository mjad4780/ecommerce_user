import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category.dart';
import 'item1view.dart';
import 'setting.dart';

part 'response_home.g.dart';

@JsonSerializable()
class ResponseHome {
  String? status;
  List<Setting>? setting;
  List<Category>? categories;
  Item1view? item1view;

  ResponseHome({
    this.status,
    this.setting,
    this.categories,
    this.item1view,
  });

  factory ResponseHome.fromJson(Map<String, dynamic> json) {
    return _$ResponseHomeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseHomeToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ResponseHome) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      status.hashCode ^
      setting.hashCode ^
      categories.hashCode ^
      item1view.hashCode;
}
