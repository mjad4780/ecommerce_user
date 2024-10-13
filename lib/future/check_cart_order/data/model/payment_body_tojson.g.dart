// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_body_tojson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentBodyTojson _$PaymentBodyTojsonFromJson(Map<String, dynamic> json) =>
    PaymentBodyTojson(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      customer: json['customer'] as String,
    );

Map<String, dynamic> _$PaymentBodyTojsonToJson(PaymentBodyTojson instance) =>
    <String, dynamic>{
      'amount': '${instance.amount}00',
      'currency': instance.currency,
      'customer': instance.customer,
    };
