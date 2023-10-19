import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'relative_book_state.dart';

class RelativeBookCubit extends Cubit<RelativeBookState> {
  RelativeBookCubit(this.homeRepoImp) : super(RelativeBookInitial());
    final HomeRepoImp homeRepoImp;
  Future<void> featchRelativeBooks({required String category}) async {
    emit(RelativeBookLoading());
    var response = await homeRepoImp.featchRelativeBooks(category: category);
    response.fold((failure) {
      emit(RelativeBookFailure(failure.errMessage));
    }, (books) {
      emit(RelativeBookSuccess(books));
    });
  }
}
