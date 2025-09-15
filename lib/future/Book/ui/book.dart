import 'package:dio/dio.dart';
import 'package:ecommerce_user/core/networking/dio_factory.dart';
import 'package:ecommerce_user/future/Book/logic/cubit/get_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_service.dart';
import '../data/repo/repo.dart';
import 'widgets/view_book_bloc.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return BlocProvider(
      create: (context) => GetBooKCubit(GetBookRepo(
        ApiService(
          Dio(),
        ),
      ))
        ..emitLoginStates(0),
      child: const ViewBookBlocBuilder(),
    );
  }
}
