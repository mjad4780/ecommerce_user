import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class AdressData {
  @JsonKey(name: 'adress_id')
  final int? adressId;
  @JsonKey(name: 'adress_userid')
  final int? adressUserid;
  @JsonKey(name: 'adress_city')
  final String? adressCity;
  @JsonKey(name: 'adress_name')
  final String? adressName;
  @JsonKey(name: 'adress_street')
  final String? adressStreet;
  @JsonKey(name: 'adress_lat')
  final double? adressLat;
  @JsonKey(name: 'adress_long')
  final double? adressLong;

  const AdressData({
    this.adressId,
    this.adressUserid,
    this.adressCity,
    this.adressName,
    this.adressStreet,
    this.adressLat,
    this.adressLong,
  });

  factory AdressData.fromJson(Map<String, dynamic> json) =>
      _$AdressDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdressDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AdressData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      adressId.hashCode ^
      adressUserid.hashCode ^
      adressCity.hashCode ^
      adressName.hashCode ^
      adressStreet.hashCode ^
      adressLat.hashCode ^
      adressLong.hashCode;
}
