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
    //   try {
    var data = await apiServices
        .get('volumes?Filtering=free-ebooks&q=subject:programming');
    List<BookEntity> books = getBooksMethod(data);
    return books;
    //   return right(books);
    //   } catch (errMessage) {
    //     if (errMessage is DioException) {
    //       return left(ServerFailure.fromDioError(errMessage));
    //     }
    //     return left(ServerFailure(errMessage.toString()));
    //   }
    // }
  }

  List<BookEntity> getBooksMethod(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchSimilarBooks({required String category}) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }
}
