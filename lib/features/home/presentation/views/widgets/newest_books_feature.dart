import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'newest_book_item.dart';

class NewestBooksFeature extends StatelessWidget {
  const NewestBooksFeature({super.key, required this.newestBooks});
  final List<BookModel> newestBooks;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newestBooks.length,
        (context, index) => BooksListViewItem(
          bookModel: newestBooks[index],
        ),
      ),
    );
  }
}
