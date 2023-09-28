part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFaileur extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFaileur(this.errMessage);


}
final class FeaturedBooksSuccess extends FeaturedBooksState {
 final List<BooksModel> books;

 const FeaturedBooksSuccess(this.books);

  
}
