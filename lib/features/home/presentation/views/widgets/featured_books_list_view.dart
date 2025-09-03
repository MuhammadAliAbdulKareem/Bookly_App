import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/view_model(manager)/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 200.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.featuredBooks.length,
              itemBuilder: (context, index) => Padding(
                padding: REdgeInsets.only(
                  right: 16.0,
                ),
                child: CustomBookItem(
                  width: 150,
                  imageUrl: state
                      .featuredBooks[index].volumeInfo.imageLinks.thumbnail,
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: 200.h,
            child: SkeletonizerConfig(
              data: const SkeletonizerConfigData(
                effect: ShimmerEffect(
                  duration: Duration(milliseconds: 1000),
                  highlightColor: Colors.grey,
                  baseColor: Colors.black12,
                ),
              ),
              child: Skeletonizer(
                enabled: true,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      width: 150.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        // color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(12.r),
                      ),
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
