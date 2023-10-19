part of 'relative_book_cubit.dart';

abstract class RelativeBookState extends Equatable {
  const RelativeBookState();

  @override
  List<Object> get props => [];
}

final class RelativeBookInitial extends RelativeBookState {}
final class RelativeBookLoading extends RelativeBookState {}
final class RelativeBookSuccess extends RelativeBookState {
  final List<BookModel> book;

  const RelativeBookSuccess(this.book);
}
final class RelativeBookFailure extends RelativeBookState {
  final String errorMessage;

 const RelativeBookFailure(this.errorMessage);
}
