import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/networking/api_service.dart';
import 'model/payment/payment.dart';
import 'model/payment_body_tojson.dart';

class RepoPayment {
  final ApiService _apiService;

  RepoPayment(this._apiService);

  Future<ApiResult<void>> greatePayment(PaymentBodyTojson data) async {
    try {
      Payment? response = await _apiService.greatePayment(data);
      await initPaymentSheet(response.clientSecret!, data.customer);

      try {
        await Stripe.instance.presentPaymentSheet().then((value) {
          log('Payment successful');

          // paymentIntent = null;
        }).onError((error, stackTrace) {
          log('flow has been cancelled');
          response = null;

          // Utils.showMessage(LocaleKeys.payment.tr, LocaleKeys.paymentCancelled.tr);
        });
      } on StripeException {
        response = null;

        log('Payment flow has been cancell');
      } catch (e) {
        log('message');
      }

      return const ApiResult.success(null);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}

Future initPaymentSheet(
  String paymentIntentClientSecret,
  String customerId,
) async {
  await Stripe.instance.initPaymentSheet(
    paymentSheetParameters: SetupPaymentSheetParameters(
      // Main params
      customerId: customerId,
      merchantDisplayName: 'mohamedjad',
      paymentIntentClientSecret: paymentIntentClientSecret,
      style: ThemeMode.dark,
    ),
  );
}

displaySheatButtom(Payment response) async {}
