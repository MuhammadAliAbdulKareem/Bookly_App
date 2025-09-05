import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksListViewSection extends StatelessWidget {
  const SimilarBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            textAlign: TextAlign.center,
            style: TextStyles.textStyle18.copyWith(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
