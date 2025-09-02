import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/text_styles.dart';
import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
        );
      },
      child: Padding(
        padding: REdgeInsets.symmetric(
          vertical: 7.0.h,
          horizontal: 30.0.w,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 120.h,
              child: CustomBookItem(
                width: 85.w,
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
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
                    bookModel.volumeInfo.title!,
                    style: TextStyles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: TextStyles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: TextStyles.textStyle20.copyWith(
                        fontSize: 16.0.sp,
                      ),
                    ),
                    SizedBox(width: 40.0.w),
                    BookRating(
                      rating: bookModel.volumeInfo.pageCount!,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
