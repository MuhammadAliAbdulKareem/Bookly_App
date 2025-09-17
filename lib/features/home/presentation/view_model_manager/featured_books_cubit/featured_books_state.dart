part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> featuredBooks;
  const FeaturedBooksSuccess(this.featuredBooks);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFailure(this.errMessage);
}

final class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksPaginationFailure(this.errMessage);
}
