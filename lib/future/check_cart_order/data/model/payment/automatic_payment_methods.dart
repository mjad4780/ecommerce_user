import 'package:json_annotation/json_annotation.dart';

part 'automatic_payment_methods.g.dart';

@JsonSerializable()
class AutomaticPaymentMethods {
  @JsonKey(name: 'allow_redirects')
  String? allowRedirects;
  bool? enabled;

  AutomaticPaymentMethods({this.allowRedirects, this.enabled});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    return _$AutomaticPaymentMethodsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsToJson(this);
}
