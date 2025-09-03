import 'package:bookly/features/home/presentation/view_model(manager)/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
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
                  width: 78.0,
                  imageUrl: 'https://picsum.photos/200/300',
                ),
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: 128.h,
            child: Skeletonizer(
              enabled: true,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    width: 78.w,
                    height: 128.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
