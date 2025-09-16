import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_horizontal_skeleton_list.dart';
import '../../view_model_manager/similar_books_cubit/similar_books_cubit.dart';
import '../../view_model_manager/similar_books_cubit/similar_books_state.dart';
import 'similar_books_list_view.dart';

class SimilarBooksBlocBuilder extends StatelessWidget {
  const SimilarBooksBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SimilarBooksListView(books: state.similarBooks);
      } else if (state is SimilarBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return CustomHorizontalSkeletonList(itemHeight: 128, itemWidth: 78);
      }
    });
  }
}
