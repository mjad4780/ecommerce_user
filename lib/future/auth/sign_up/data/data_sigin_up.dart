import 'package:dartz/dartz.dart';

import '../../../../core/errors/expentions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';

class SignUpDate {
  final ApiConsumer api;

  SignUpDate({required this.api});

  Future<Either<Failure, dynamic>> signUpData(
      String email, String password, String username, String phone) async {
    try {
      var response =
          await api.post(ApiConstants.signUp, isFromData: true, data: {
        'username': username,
        'email': email,
        'phone': phone,
        'password': password,
      });
      if (response['status'] == 'success') {
        return Right(response);
      } else {
        return Left(Failure(errMessage: response['status']));
      }
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }
}
