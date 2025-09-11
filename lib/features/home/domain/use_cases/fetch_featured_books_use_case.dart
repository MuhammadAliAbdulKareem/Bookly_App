import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> execute([NoParams? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
  // Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
  //   try {
  //     var data = await apiServices
  //         .get('volumes?Filtering=free-ebooks&q=subject:programming');
  //     List<BookModel> books = [];
  //     for (var item in data['items']) {
  //       books.add(BookModel.fromJson(item));
  //     }
  //     return right(books);
  //   } catch (errMessage) {
  //     if (errMessage is DioException) {
  //       return left(ServerFailure.fromDioError(errMessage));
  //     }
  //     return left(ServerFailure(errMessage.toString()));
  //   }
  // }
}
