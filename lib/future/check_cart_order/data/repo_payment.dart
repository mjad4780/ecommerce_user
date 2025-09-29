import 'package:flutter_stripe/flutter_stripe.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import '../../../core/networking/api_service.dart';
import '../../../key.dart';
import 'model/payment/payment.dart';
import 'model/payment_body_tojson.dart';
import 'repo.dart';

class RepoPayment {
  final ApiService _apiService;
  final CheckCartOrderRepo cartOrderRepo;
  RepoPayment(this._apiService, this.cartOrderRepo);

  Future<ApiResult<void>> greatePayment(
      PaymentBodyTojson data, CheckCartOrderRequest reqest) async {
    try {
      Payment? response = await _apiService.greatePayment(
          data, 'Bearer ${ApiConstants.apikey}');
      await initPaymentSheet(response.clientSecret, data.customer);

      await Stripe.instance.presentPaymentSheet();
      await cartOrderRepo.checkCartOrder(reqest);
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
