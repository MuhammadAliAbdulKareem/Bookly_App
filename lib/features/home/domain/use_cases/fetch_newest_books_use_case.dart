import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/api_services.dart';
import '../entities/book_entity';
import '../repos/home_repo.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;
  final ApiServices apiServices;

  FetchNewestBooksUseCase(this.apiServices, this.homeRepo);
  // Future<Either<Failure, List<BookModel>>> () async {
  //   try {
  //     var data = await apiServices.get(
  //         'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');
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
  Future<Either<Failure, List<BookEntity>>> execute([NoParams? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
