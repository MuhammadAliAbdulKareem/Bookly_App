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
        BookRating(),
        SizedBox(
          height: 40.h,
        ),
        BooksAction(),
      ],
    );
  }
}
