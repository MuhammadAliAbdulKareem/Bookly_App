import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // Implementation for fetching featured books
    throw UnimplementedError();
  }
}
