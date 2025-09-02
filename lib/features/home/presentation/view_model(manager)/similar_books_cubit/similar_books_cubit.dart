import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/repos/home_repo.dart';
import 'similar_books_state.dart';

class NewestBooksCubit extends Cubit<SimilarBooksState> {
  NewestBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
