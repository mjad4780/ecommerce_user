import 'package:json_annotation/json_annotation.dart';

import 'automatic_payment_methods.dart';
import 'metadata.dart';
import 'payment_method_options.dart';

part 'payment.g.dart';

@JsonSerializable()
class Payment {
  String? id;
  String? object;
  int? amount;
  @JsonKey(name: 'amount_capturable')
  int? amountCapturable;
  @JsonKey(name: 'amount_details')
  @JsonKey(name: 'amount_received')
  int? amountReceived;
  dynamic application;
  @JsonKey(name: 'application_fee_amount')
  dynamic applicationFeeAmount;
  @JsonKey(name: 'automatic_payment_methods')
  AutomaticPaymentMethods? automaticPaymentMethods;
  @JsonKey(name: 'canceled_at')
  dynamic canceledAt;
  @JsonKey(name: 'cancellation_reason')
  dynamic cancellationReason;
  @JsonKey(name: 'capture_method')
  String? captureMethod;
  @JsonKey(name: 'client_secret')
  String? clientSecret;
  @JsonKey(name: 'confirmation_method')
  String? confirmationMethod;
  int? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  @JsonKey(name: 'last_payment_error')
  dynamic lastPaymentError;
  @JsonKey(name: 'latest_charge')
  dynamic latestCharge;
  bool? livemode;
  Metadata? metadata;
  @JsonKey(name: 'next_action')
  dynamic nextAction;
  @JsonKey(name: 'on_behalf_of')
  dynamic onBehalfOf;
  @JsonKey(name: 'payment_method')
  dynamic paymentMethod;
  @JsonKey(name: 'payment_method_configuration_details')
  dynamic paymentMethodConfigurationDetails;
  @JsonKey(name: 'payment_method_options')
  PaymentMethodOptions? paymentMethodOptions;
  @JsonKey(name: 'payment_method_types')
  List<String>? paymentMethodTypes;
  dynamic processing;
  @JsonKey(name: 'receipt_email')
  dynamic receiptEmail;
  dynamic review;
  @JsonKey(name: 'setup_future_usage')
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  @JsonKey(name: 'statement_descriptor')
  dynamic statementDescriptor;
  @JsonKey(name: 'statement_descriptor_suffix')
  dynamic statementDescriptorSuffix;
  String? status;
  @JsonKey(name: 'transfer_data')
  dynamic transferData;
  @JsonKey(name: 'transfer_group')
  dynamic transferGroup;

  Payment({
    this.id,
    this.object,
    this.amount,
    this.amountCapturable,
    this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    this.livemode,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodConfigurationDetails,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return _$PaymentFromJson(json);
  }
}
