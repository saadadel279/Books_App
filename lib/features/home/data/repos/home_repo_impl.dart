import 'package:books_app/core/utils/api_services.dart';
import 'package:books_app/core/utils/errors/faileur.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo{

final ApiServices apiServices;

  HomeRepoImp({required this.apiServices});
  @override
  Future<Either<Failure, List<BooksModel>>> featchNewestBooks() async{
   var data= await apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science');

  try {
  List<BooksModel> books=[];
  for (var item in data['items']) {
    books.add(BooksModel.fromJson(item));
  }
  return right(books);
} catch (e) {
  if(e is DioException){
    return left(ServerFailure.fromDioException(e));
  
  }return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<Failure, List<BooksModel>>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }
}