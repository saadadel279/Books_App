import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view/widgets/also_like_books_listciew.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_appBar_details_screen.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:  Scaffold(
            body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
            const SafeArea(child: CustomAppBarDetailsView()),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.25),
              child:   CustomBookCover(imageURL: book.volumeInfo.imageLinks?.thumbnail ?? 'https://tse3.mm.bing.net/th?id=OIP.4siKIW3oZ4kEo0vkEVQ5hgHaLH&pid=Api&P=0&h=220'),
            ),
            const SizedBox(
              height: 30,
            ),
             Text(
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              book.volumeInfo.title!,
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 7,
            ),
            Opacity(
              opacity: 0.5,
              child: Text(
                book.volumeInfo.authors![0],
                style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.only(left: 142),
              child: BookRating(count: 477,rating: 4.5),
            ),
            const SizedBox(
              height: 10,
            ),
             BookAction(book: book),
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
            AlsoLikeBooksListview(book: book,),
                  ],
                ),
          ),
        )
      ],
    );
   
  }
}

