import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // Implementation for fetching best seller books
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // Implementation for fetching featured books
    throw UnimplementedError();
  }
}
