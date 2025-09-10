import '../../domain/entities/book_entity';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchNewestBooks();
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchSimilarBooks({required String category});
}
