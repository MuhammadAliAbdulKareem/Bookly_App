import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/text_styles.dart';

class BestSellersBooksItem extends StatelessWidget {
  const BestSellersBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 85.0.w,
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0.r),
            image: DecorationImage(
              image: AssetImage(AssetsManager.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          width: 10.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 220.0.w,
              child: Text(
                'Harry Potter and the Goblet of Fire',
                style: TextStyles.bookTitle20R600,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Text(
              'J.K. Rowling',
              style: TextStyles.bookAuthor14R400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '19.99 €',
                  style: TextStyles.bookTitle20R600.copyWith(
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
                        style: TextStyles.bookAuthor14R400,
                      ),
                      Text(
                        '(2390)',
                        style: TextStyles.bookAuthor14R400,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
