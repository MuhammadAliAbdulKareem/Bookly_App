import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> newestBooks;
  const NewestBooksSuccess(this.newestBooks);
}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}
