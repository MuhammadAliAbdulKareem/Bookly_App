import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'best_sellers_feature.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

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
                  'Best Sellers',
                  style: TextStyles.textStyle18,
                ),
              ),
              SizedBox(
                height: 15.0.h,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: true,
          child: BestSellersBooksFeature(),
        ),
      ],
    );
  }
}
