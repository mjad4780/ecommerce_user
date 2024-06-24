import 'package:dartz/dartz.dart';
import 'package:ecommerce_user/core/networking/api_constants.dart';
import '../../../../core/class/cache_helper.dart';
import '../../../../core/errors/expentions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/get_it/get_it.dart';
import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';

class ForgetPassword {
  final ApiConsumer api;

  ForgetPassword({required this.api});

  /// :check email
  Future<Either<Failure, dynamic>> checkEmail() async {
    try {
      var response =
          await api.post(ApiConstants.checkEmail, isFromData: true, data: {
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
          await api.post(ApiConstants.repassword, isFromData: true, data: {
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
          await api.post(ApiConstants.verfyCodeForget, isFromData: true, data: {
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
