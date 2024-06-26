import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'orders_details.g.dart';

@JsonSerializable()
class OrdersDetails {
  final String? status;
  final List<Datum>? data;

  const OrdersDetails({this.status, this.data});

  factory OrdersDetails.fromJson(Map<String, dynamic> json) {
    return _$OrdersDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrdersDetailsToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! OrdersDetails) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => status.hashCode ^ data.hashCode;
}
