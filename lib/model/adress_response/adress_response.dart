import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'adress_response.g.dart';

@JsonSerializable()
class AdressResponse {
  final String? status;
  final List<AdressData>? data;

  const AdressResponse({this.status, this.data});

  factory AdressResponse.fromJson(Map<String, dynamic> json) {
    return _$AdressResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdressResponseToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AdressResponse) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
