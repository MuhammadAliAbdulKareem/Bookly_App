import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/text_styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookEntity bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          child: CustomBookItem(
            width: 150.0,
            imageUrl: bookModel.imageUrl,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          bookModel.title,
          style: TextStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          bookModel.author,
          style: TextStyles.textStyle16.copyWith(
            fontStyle: FontStyle.italic,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        BookRating(
          rating: bookModel.rating,
        ),
        SizedBox(
          height: 40.h,
        ),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
