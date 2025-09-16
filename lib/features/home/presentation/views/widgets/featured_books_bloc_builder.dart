import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_horizontal_skeleton_list.dart';
import '../../view_model_manager/featured_books_cubit/featured_books_cubit.dart';
import 'featured_books_list_view.dart';

class FeaturedBooksBlocBuilder extends StatelessWidget {
  const FeaturedBooksBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeaturedBooksListView(books: state.featuredBooks);
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
