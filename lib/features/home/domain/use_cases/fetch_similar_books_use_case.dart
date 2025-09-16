import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../repos/home_repo.dart';

class FetchSimilarBooksUseCase extends UseCase<List<BookEntity>, String?> {
  final HomeRepo homeRepo;

  FetchSimilarBooksUseCase(this.homeRepo);

  // Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
  //     {required String category}) async {
  //   try {
  //     var data = await apiServices
  //         .get('volumes?Filtering=free-ebooks&q=$category&sorting=relevance');
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

  @override
  Future<Either<Failure, List<BookEntity>>> execute([String? param]) async {
    return await homeRepo.fetchSimilarBooks(category: param!);
  }
  // @override
  // Future<Either<Failure, List<BookEntity>>> execute({String? category}) async {
  //   return await homeRepo.fetchSimilarBooks(category: category!);
  // }
}
