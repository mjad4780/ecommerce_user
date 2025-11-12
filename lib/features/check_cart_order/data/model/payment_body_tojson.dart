import 'package:json_annotation/json_annotation.dart';
part 'payment_body_tojson.g.dart';

@JsonSerializable()
class PaymentBodyTojson {
  final int amount;
  final String currency;
  final String customer;

  PaymentBodyTojson(
      {required this.amount, required this.currency, required this.customer});
  Map<String, dynamic> toJson() => _$PaymentBodyTojsonToJson(this);
}
