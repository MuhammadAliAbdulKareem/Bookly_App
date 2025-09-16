import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) => Padding(
          padding: REdgeInsets.only(
            right: 10.0,
          ),
          child: CustomBookItem(
            width: 78.0.w,
            imageUrl: books[index].imageUrl,
          ),
        ),
      ),
    );
  }
}
