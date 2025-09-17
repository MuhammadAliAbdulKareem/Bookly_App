import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_bloc_consumer.dart';
import 'newest_books_feature_bloc_builder.dart';

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
              FeaturedBooksBlocConsumer(),
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
        NewestBooksFeatureBlocBuilder(),
      ],
    );
  }
}
