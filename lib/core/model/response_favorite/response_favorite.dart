import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'item1view.dart';

part 'response_favorite.g.dart';

@JsonSerializable()
class ResponseFavorite {
  Item1view? item1view;

  ResponseFavorite({this.item1view});

  factory ResponseFavorite.fromJson(Map<String, dynamic> json) {
    return _$ResponseFavoriteFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseFavoriteToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ResponseFavorite) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => item1view.hashCode;
}
