import 'package:dartz/dartz.dart';
import 'package:ecommerce_user/my%20core/errors/failure.dart';

import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';
import '../../../../my core/errors/expentions.dart';

class LoginDate {
  final ApiConsumer api;

  LoginDate({required this.api});

  Future<Either<Failure, dynamic>> loginData(
      String email, String password) async {
    try {
      var response = await api.post(EndPoint.linklogin,
          isFromData: true, data: {"email": email, "password": password});
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
