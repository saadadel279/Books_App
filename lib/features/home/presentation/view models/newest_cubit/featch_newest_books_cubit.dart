import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'featch_newest_books_state.dart';

class NewestBooksCubit extends Cubit<FeatchNewestBooksState> {
  NewestBooksCubit(this.homeRepoImp) : super(FeatchNewestBooksInitial());
  final HomeRepoImp homeRepoImp;
  Future<void> featchnewestbooks() async {
    emit(FeatchNewestBooksLoading());
    var response = await homeRepoImp.featchNewestBooks();
    response.fold((failure) {
      emit(FeatchNewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeatchNewestBooksSuccess(books));
    });
  }
}
