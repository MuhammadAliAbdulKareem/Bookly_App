import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kBookDetailsView,
              extra: books[index],
            );
          },
          child: Padding(
            padding: REdgeInsets.only(
              right: 16.0,
            ),
            child: CustomBookItem(
              width: 150,
              imageUrl: books[index].imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
