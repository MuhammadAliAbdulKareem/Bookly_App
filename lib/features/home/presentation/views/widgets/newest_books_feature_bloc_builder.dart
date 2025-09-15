import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_skeleton_book_item.dart';
import '../../view_model_manager/newest_books_cubit/newest_books_cubit.dart';
import '../../view_model_manager/newest_books_cubit/newest_books_state.dart';
import 'newest_books_feature.dart';

class NewestBooksFeatureBlocBuilder extends StatelessWidget {
  const NewestBooksFeatureBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return NewestBooksFeature(
            newestBooks: state.newestBooks,
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const CustomSkeletonBookItem();
            },
            childCount: 6,
          ));
        }
      },
    );
  }
}
