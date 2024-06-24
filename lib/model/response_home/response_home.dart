import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'categories.dart';
import 'item1view.dart';
import 'itemtopselling.dart';
import 'setting.dart';

part 'response_home.g.dart';

@JsonSerializable()
class ResponseHome {
  final String? status;
  final Setting? setting;
  final Itemtopselling? itemtopselling;
  final Categories? categories;
  final Item1view? item1view;

  const ResponseHome({
    this.status,
    this.setting,
    this.itemtopselling,
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
      itemtopselling.hashCode ^
      categories.hashCode ^
      item1view.hashCode;
}
