import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 245.h,
          child: CustomBookItem(
            width: 150.0,
            imageUrl:
                'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fmedia.istockphoto.com%2Fid%2F814423752%2Fphoto%2Feye-of-model-with-colorful-art-make-up-close-up.jpg%3Fs%3D612x612%26w%3D0%26k%3D20%26c%3Dl15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE%3D&sp=1756553315T9465ef7fb4258755cee6c9c006c0e206493b39e6aa346eaa923db5a9291e97f0',
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          'The Jungle Book',
          style: TextStyles.textStyle30,
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          'Rudyard Kipling',
          style: TextStyles.textStyle16.copyWith(
            fontStyle: FontStyle.italic,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        BookRating(
          rating: 4,
        ),
        SizedBox(
          height: 40.h,
        ),
        BooksAction(),
      ],
    );
  }
}
