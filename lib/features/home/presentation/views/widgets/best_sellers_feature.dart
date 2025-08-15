import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_sellers_item.dart';

class BestSellersBooksFeature extends StatelessWidget {
  const BestSellersBooksFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: REdgeInsets.symmetric(horizontal: 30.0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => BooksListViewItem(),
    );
  }
}
