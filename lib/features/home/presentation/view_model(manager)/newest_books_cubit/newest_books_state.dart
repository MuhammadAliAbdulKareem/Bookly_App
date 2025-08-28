import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newestBooks;
  const NewestBooksSuccess(this.newestBooks);
}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}
