import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rating,
  });

  final num rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 16.0.sp,
          ),
          Text(
            rating.toStringAsFixed(1),
            style: TextStyles.textStyle16,
          ),
          Text(
            '($rating)',
            style: TextStyles.textStyle14,
          )
        ],
      ),
    );
  }
}
