// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_body_tojson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PaymentBodyTojsonToJson(PaymentBodyTojson instance) =>
    <String, dynamic>{
      'amount': instance.amount * 100, // تحويل المبلغ إلى السنتات
      'currency': instance.currency,
      'customer': instance.customer,
      'payment_method_types[]': 'card', // نوع طريقة الدفع
    };
