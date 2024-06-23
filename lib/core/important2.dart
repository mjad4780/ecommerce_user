// import 'package:flutter/material.dart';

// class FeatuedBooksListViewBlocBuilder extends StatefulWidget {
//   const FeatuedBooksListViewBlocBuilder({
//     super.key,
//   });

//   @override
//   State<FeatuedBooksListViewBlocBuilder> createState() =>
//       _FeatuedBooksListViewBlocBuilderState();
// }

// class _FeatuedBooksListViewBlocBuilderState
//     extends State<FeatuedBooksListViewBlocBuilder> {
//   List<BookEntity> books = [];
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
//       listener: (context, state) {
//         if (state is FeaturedBooksSuccess) {
//           books.addAll(state.books);
//         }

//         if (state is FeaturedBooksPaginationFailure) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             buildErrorWidget(state.errMessage),
//           );
//         }
//       },
//       builder: (context, state) {
//         if (state is FeaturedBooksSuccess ||
//             state is FeaturedBooksPaginationLoading ||
//             state is FeaturedBooksPaginationFailure) {
//           return FeaturedBooksListView(
//             books: books,
//           );
//         } else if (state is FeaturedBooksFailure) {
//           return Text(state.errMessage);
//         } else {
//           return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
