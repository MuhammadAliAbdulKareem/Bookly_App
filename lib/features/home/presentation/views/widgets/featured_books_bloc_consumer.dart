import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_horizontal_skeleton_list.dart';
import '../../../domain/entities/book_entity.dart';
import '../../view_model_manager/featured_books_cubit/featured_books_cubit.dart';
import 'featured_books_list_view.dart';

class FeaturedBooksBlocConsumer extends StatelessWidget {
  FeaturedBooksBlocConsumer({
    super.key,
  });
  List<BookEntity> featuredBooks = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) => {
        if (state is FeaturedBooksSuccess)
          {
            featuredBooks.addAll(state.featuredBooks),
          },
        if (state is FeaturedBooksPaginationFailure)
          {
            Fluttertoast.showToast(
              msg: state.errMessage,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
            )
          }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksListView(books: featuredBooks);
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomHorizontalSkeletonList(
            itemHeight: 200,
            itemWidth: 150,
          );
        }
      },
    );
  }
}
