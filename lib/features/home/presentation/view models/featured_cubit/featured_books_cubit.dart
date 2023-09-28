import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImp) : super(FeaturedBooksInitial());
final HomeRepoImp homeRepoImp;
  Future<void> featchFeaturedBooksIncubit()async{
    emit(FeaturedBooksLoading());
   var response=await homeRepoImp.featchFeaturedBooks();
    response.fold((failure) {
      emit(FeaturedBooksFaileur(failure.errMessage));
    } , (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
