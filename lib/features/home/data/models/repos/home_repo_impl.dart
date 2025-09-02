import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
          'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (errMessage) {
      if (errMessage is DioException) {
        return left(ServerFailure.fromDioError(errMessage));
      }
      return left(ServerFailure(errMessage.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices
          .get('volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (errMessage) {
      if (errMessage is DioException) {
        return left(ServerFailure.fromDioError(errMessage));
      }
      return left(ServerFailure(errMessage.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          'volumes?Filtering=free-ebooks&q=subject:programming&sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (errMessage) {
      if (errMessage is DioException) {
        return left(ServerFailure.fromDioError(errMessage));
      }
      return left(ServerFailure(errMessage.toString()));
    }
  }
}
