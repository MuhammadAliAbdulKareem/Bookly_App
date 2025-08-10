import 'package:bookly/core/utils/text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
        SizedBox(
          height: 245.h,
          child: CustomBookItem(),
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
      ],
    );
  }
}
