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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 40.0.h,
          ),
          Text(
            'Best Sellers',
            style: TextStyles.titleMedium,
          ),
          Expanded(
            child: BestSellersBooksFeature(),
          ),
        ],
      ),
    );
  }
}
