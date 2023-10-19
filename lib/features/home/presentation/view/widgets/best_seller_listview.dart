import 'package:books_app/core/utils/widgets/customLoading.dart';
import 'package:books_app/core/utils/widgets/custom_error_ms.dart';
import 'package:books_app/features/home/presentation/view%20models/newest_books_cubit/featch_newest_books_cubit.dart';
import 'package:books_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListview extends StatelessWidget {
  const NewestListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, FeatchNewestBooksState>(
      builder: (context, state) {
        if (state is FeatchNewestBooksSuccess) {
           return ListView.builder(
            itemCount: state.books.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListItem(book: state.books[index]),
            );
          },
        );
        }else if(state is FeatchNewestBooksFailure){
            return CustomErrorMessage(errMessage: state.errMessage,);
        }else{
          return const CustomLoading();
        }
       
      },
    );
  }
}
