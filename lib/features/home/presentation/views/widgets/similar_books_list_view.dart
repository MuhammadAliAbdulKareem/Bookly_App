import 'package:bookly/features/home/presentation/view_model(manager)/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_horizontal_skeleton_list.dart';
import '../../view_model(manager)/similar_books_cubit/similar_books_state.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: 128.h,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: REdgeInsets.only(
                right: 10.0,
              ),
              child: CustomBookItem(
                width: 78.0.w,
                imageUrl:
                    state.similarBooks[index].volumeInfo.imageLinks.thumbnail,
              ),
            ),
          ),
        );
      } else if (state is SimilarBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return CustomHorizontalSkeletonList(itemHeight: 128, itemWidth: 78.w);
      }
    });
  }
}
