import '../../../../core/utils/api_services.dart';
import '../../domain/entities/book_entity';
import '../models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchSimilarBooks({required String category});
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiServices apiServices;
  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices
        .get('volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');
    List<BookEntity> books = getBooksMethod(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices
        .get('volumes?Filtering=free-ebooks&q=subject:programming');
    List<BookEntity> books = getBooksMethod(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchSimilarBooks({required String category}) async {
    var data = await apiServices
        .get('volumes?Filtering=free-ebooks&q=$category&sorting=relevance');
    List<BookEntity> books = getBooksMethod(data);
    return books;
  }

  List<BookEntity> getBooksMethod(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
