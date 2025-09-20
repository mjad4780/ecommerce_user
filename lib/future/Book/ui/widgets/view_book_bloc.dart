import 'package:ecommerce_user/core/widgets/failer_widget.dart';
import 'package:ecommerce_user/future/Book/logic/cubit/get_book_cubit.dart';
import 'package:ecommerce_user/future/Book/logic/cubit/get_book_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../entities/book_entity.dart';
import 'featured_list_view.dart';

class ViewBookBlocBuilder extends StatefulWidget {
  const ViewBookBlocBuilder({
    super.key,
  });

  @override
  State<ViewBookBlocBuilder> createState() => _ViewBookBlocBuilderState();
}

class _ViewBookBlocBuilderState extends State<ViewBookBlocBuilder> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetBooKCubit, GetBooKState>(
      listener: (context, state) {
        if (state is Succes) {
          books.addAll(state.book);
        }
      },
      buildWhen: (previous, current) =>
          current is Loading ||
          current is Succes ||
          current is Erorr ||
          current is fath,
      builder: (context, state) {
        if (state is Succes || state is fath) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBooksListView(
                      books: books,
                    )
                  ],
                ),
              ),
            ],
          );
        } else if (state is Erorr) {
          return FailerWidget(
              messege: state.erorr,
              onPressed: () {
                context.read<GetBooKCubit>().emitgetBook(0);
              });
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
