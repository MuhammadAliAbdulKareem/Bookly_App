import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/text_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: TextStyles.textStyle20.copyWith(
            fontSize: 16.0.sp,
          ),
        ),
        SizedBox(width: 40.0.w),
        SizedBox(
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
                '4.5',
                style: TextStyles.textStyle16,
              ),
              Text(
                '(2390)',
                style: TextStyles.textStyle14,
              )
            ],
          ),
        ),
      ],
    );
  }
}
