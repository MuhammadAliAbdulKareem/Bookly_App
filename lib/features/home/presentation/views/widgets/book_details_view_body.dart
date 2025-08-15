import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'books_details_section.dart';
import 'similar_books_list_view_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 35.h,
                ),
              ),
              SimilarBooksListViewSection(),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
