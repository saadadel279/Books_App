import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/view/widgets/also_like_books_listciew.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_appBar_details_screen.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SafeArea(child: CustomAppBarDetailsView()),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: const CustomBookCover(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 7,
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 7),
          const Padding(
            padding: EdgeInsets.only(left: 142),
            child: BookRating(),
          ),
          const SizedBox(
            height: 10,
          ),
          const BookAction(),
          const SizedBox(
            height: 15,
          ),
           const Row(
             children: [
               Text('You can also like',style: Styles.textStyle18,),
             ],
           ),
           const SizedBox(
            height: 10,
           ),
 const AlsoLikeBooksListview(),
        ],
      ),
    );
  }
}

