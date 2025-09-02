import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/view_model(manager)/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model(manager)/newest_books_cubit/newest_books_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/skeleton_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';
import 'newest_books_feature.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 40.0.h,
              ),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Newest Books',
                  style: TextStyles.textStyle18,
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
            ],
          ),
        ),
        BlocBuilder<NewestBooksCubit, NewestBooksState>(
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
                  return const SkeletonBookItem();
                },
                childCount: 6,
              ));
            }
          },
        ),
      ],
    );
  }
}
