import 'package:dartz/dartz.dart';
import 'package:ecommerce_user/my%20core/errors/failure.dart';
import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';
import '../../../../my core/databases/cache/cache_helper.dart';
import '../../../../my core/errors/expentions.dart';
import '../../../../my core/get_it/get_it.dart';

class ForgetPassword {
  final ApiConsumer api;

  ForgetPassword({required this.api});

  /// :check email
  Future<Either<Failure, dynamic>> checkEmail() async {
    try {
      var response =
          await api.post(EndPoint.check_email, isFromData: true, data: {
        'email': getIt<CacheHelper>().getData(key: 'email'),
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

  /// :repassword

  Future<Either<Failure, dynamic>> repassword(String password) async {
    try {
      var response =
          await api.post(EndPoint.Repassword, isFromData: true, data: {
        'email': getIt<CacheHelper>().getData(key: 'email'),
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

  /// :verfycode_forget

  Future<Either<Failure, dynamic>> verfyCodeForget(int verfycode) async {
    try {
      var response =
          await api.post(EndPoint.verfycode_forget, isFromData: true, data: {
        'email': getIt<CacheHelper>().getData(key: 'email'),
        'verfycode': verfycode,
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
