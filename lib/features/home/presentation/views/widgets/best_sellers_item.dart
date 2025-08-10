import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/text_styles.dart';
import 'book_rating.dart';

class BestSellersBooksItem extends StatelessWidget {
  const BestSellersBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(
        vertical: 10.0.h,
      ),
      child: Row(
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
                  style: TextStyles.textStyle20,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Text(
                'J.K. Rowling',
                style: TextStyles.textStyle14,
              ),
              BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
