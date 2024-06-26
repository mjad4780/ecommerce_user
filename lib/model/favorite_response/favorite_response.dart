import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'favorite_response.g.dart';

@JsonSerializable()
class FavoriteResponse {
  String? status;
  List<Datum>? data;

  FavoriteResponse({this.status, this.data});

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) {
    return _$FavoriteResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FavoriteResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! FavoriteResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
