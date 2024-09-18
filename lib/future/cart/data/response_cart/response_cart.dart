import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datacart.dart';

part 'response_cart.g.dart';

@JsonSerializable()
class ResponseCart {
  String? status;
  List<Datacart>? datacart;
  @JsonKey(name: 'TotapriceOffers')
  int? totapriceOffers;
  @JsonKey(name: 'Totaprice')
  int? totaprice;
  int? counts;

  ResponseCart({
    this.status,
    this.datacart,
    this.totapriceOffers,
    this.totaprice,
    this.counts,
  });

  factory ResponseCart.fromJson(Map<String, dynamic> json) {
    return _$ResponseCartFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseCartToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ResponseCart) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      status.hashCode ^
      datacart.hashCode ^
      totapriceOffers.hashCode ^
      totaprice.hashCode ^
      counts.hashCode;
}
