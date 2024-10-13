// // ignore_for_file: unused_element, use_build_context_synchronously, avoid_print

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({super.key});

//   @override
//   State<PaymentScreen> createState() => _PaymentScreenState();
// }

// class _PaymentScreenState extends State<PaymentScreen> {
//   @override
//   PaymentService paymentService = PaymentService();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () async {
//               paymentService.makePayment(context);
//             },
//             child: const Text("Pay"),
//           ),
//         ),
//       ),
//     );
//   }

// //make payment
// }

// class PaymentService {
//   Map<String, dynamic>? paymentIntent;

//   //make payment intent
//   createPaymentIntent(String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         'amount': ((int.parse(amount)) * 100).toString(),
//         'currency': currency,
//         'payment_method_types[]': 'card',
//       };
//       var secretKey =
//           "sk_test_51Q2cV4G8beASrMkOyt8GSpHEqEPhr1XZ4sFEXe57s7hforlmPC0RBDEHqJ1dB6nh2y9EZvVzgKfbibO2FvsoCIRL00AMz03oYa";

//       var response = await http.post(
//         Uri.parse('https://api.stripe.com/v1/payment_intents'),
//         headers: {
//           'Authorization': 'Bearer $secretKey',
//           'Content-Type': 'application/x-www-form-urlencoded'
//         },
//         body: body,
//       );
//       print('Payment Intent Body: ${response.body.toString()}');
//       return jsonDecode(response.body.toString());
//     } catch (err) {
//       print('Error charging user: ${err.toString()}');
//     }
//   }

//   Future<void> makePayment(BuildContext context) async {
//     try {
//       // Create payment intent data
//       paymentIntent = await createPaymentIntent('10', 'USD');
//       log(paymentIntent!['client_secret']);
//       // initialise the payment sheet setup
//       await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//           // Client secret key from payment data
//           paymentIntentClientSecret: paymentIntent!['client_secret'],
//           googlePay: const PaymentSheetGooglePay(
//               // Currency and country code is accourding to India
//               testEnv: true,
//               currencyCode: "USD",
//               merchantCountryCode: "US"),
//           // Merchant Name
//           merchantDisplayName: 'Techi4u',
//           // return URl if you want to add
//           // returnURL: 'flutterstripe://redirect',
//         ),
//       );
//       // Display payment sheet
//       displayPaymentSheet(context);
//     } catch (e) {
//       print("exception $e");

//       if (e is StripeConfigException) {
//         print("Stripe exception ${e.message}");
//       } else {
//         print("exception $e");
//       }
//     }
//   }

// //display payment sheet
//   displayPaymentSheet(BuildContext context) async {
//     try {
//       // "Display payment sheet";
//       await Stripe.instance.presentPaymentSheet();
//       // Show when payment is done
//       // Displaying snackbar for it
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Paid successfully")),
//       );
//       paymentIntent = null;
//     } on StripeException catch (e) {
//       // If any error comes during payment
//       // so payment will be cancelled
//       print('Error: $e');

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text(" Payment Cancelled")),
//       );
//     } catch (e) {
//       print("Error in displaying");
//       print('$e');
//     }
//   }
// }
