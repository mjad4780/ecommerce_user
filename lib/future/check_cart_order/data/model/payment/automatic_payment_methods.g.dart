// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'automatic_payment_methods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    AutomaticPaymentMethods(
      allowRedirects: json['allow_redirects'] as String?,
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
        AutomaticPaymentMethods instance) =>
    <String, dynamic>{
      'allow_redirects': instance.allowRedirects,
      'enabled': instance.enabled,
    };
