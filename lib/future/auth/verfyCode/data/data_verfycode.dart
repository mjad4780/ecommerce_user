import 'package:dartz/dartz.dart';
import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';
import '../../../../core/errors/expentions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../my core/databases/api/api_consumer.dart';
import '../../../../my core/databases/api/end_ponits.dart';

class VerfyCodeDate {
  final ApiConsumer api;

  VerfyCodeDate({required this.api});

  Future<Either<Failure, dynamic>> verfyCodeDate(
      int verfycode, BuildContext context) async {
    try {
      var response =
          await api.post(ApiConstants.verfycode, isFromData: true, data: {
        'email': Navigation(context).argument()['email'],
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

  //:send agin
  Future<Either<Failure, dynamic>> sendverfyCodeagin(
      BuildContext context) async {
    try {
      var response =
          await api.post(ApiConstants.sendverfycode, isFromData: true, data: {
        'email': Navigation(context).argument()['email'],
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
