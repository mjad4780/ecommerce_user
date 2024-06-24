import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../../../core/class/cache_helper.dart';
import '../../../../core/errors/expentions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/extensions/extention_navigator.dart';
import '../../../../core/get_it/get_it.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';

class LoginDate {
  final ApiConsumer api;

  LoginDate({required this.api});

  Future<Either<Failure, dynamic>> loginData(
      String email, String password, BuildContext context) async {
    try {
      var response = await api.post(ApiConstants.linklogin,
          isFromData: true, data: {"email": email, "password": password});
      if (response['status'] == 'success') {
        if (response['data']['user_improve'] != 1) {
          await Navigation(context).pushpushReplacement('/');
        } else {
          getIt<CacheHelper>()
              .saveData(key: 'id', value: response['data']['user_id']);
          getIt<CacheHelper>()
              .saveData(key: 'email', value: response['data']['user_email']);
        }
        return Right(response);
      } else {
        return Left(Failure(errMessage: response['status']));
      }
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }
}
