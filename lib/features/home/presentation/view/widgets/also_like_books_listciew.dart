import 'package:books_app/core/utils/widgets/customLoading.dart';
import 'package:books_app/core/utils/widgets/custom_error_ms.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view%20models/relative_book_cubit/relative_book_cubit.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsoLikeBooksListview extends StatelessWidget {
  const AlsoLikeBooksListview({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelativeBookCubit, RelativeBookState>(
      builder: (context, state) {
        if(state is RelativeBookSuccess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.16,
          child: ListView.builder(
            itemCount:state.book.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookCover(
                    imageURL:
                        state.book[index].volumeInfo.imageLinks?.thumbnail??"https://tse3.mm.bing.net/th?id=OIP.8TD_d_dRAQZ9nMWBjjB8pwHaLe&pid=Api&P=0&h=220",
                  ),
                );
              }),
        );
        } else if(state is RelativeBookFailure){
          return CustomErrorMessage(errMessage: state.errorMessage,);
        } else{
          return const CustomLoading();
        }
      },
    );
  }
}
