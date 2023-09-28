part of 'featch_newest_books_cubit.dart';

sealed class FeatchNewestBooksState extends Equatable {
  const FeatchNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchNewestBooksInitial extends FeatchNewestBooksState {}
final class FeatchNewestBooksLoading extends FeatchNewestBooksState {}
final class FeatchNewestBooksSuccess extends FeatchNewestBooksState {
  final List<BooksModel>books;

 const FeatchNewestBooksSuccess(this.books);
}
final class FeatchNewestBooksFailure extends FeatchNewestBooksState {
final String errMessage;

 const FeatchNewestBooksFailure(this.errMessage);
}
