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

      await Stripe.instance.presentPaymentSheet();

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
    ),
  );
}
