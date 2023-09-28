import 'package:books_app/core/utils/errors/faileur.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

 Future<Either<Failure,List<BooksModel>>> featchNewestBooks();
 Future<Either<Failure,List<BooksModel>>> featchFeaturedBooks();
}