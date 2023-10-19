import 'package:books_app/core/utils/appRouter.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key, required this.book});
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
         onTap: () {

          GoRouter.of(context).push(AppRouters.kBookDetailsscreen ,extra: book);
        },
        child: Row(
          children: [
            SizedBox(
              height: 120,
              child: CustomBookCover(imageURL: book.volumeInfo.imageLinks?.thumbnail ?? 'https://tse1.mm.bing.net/th?id=OIP.0qxWWiv5uAS-T2OK11jpawHaLZ&pid=Api&P=0&h=220'),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child:  Text(
                        book.volumeInfo.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14.copyWith(
                      color: const Color.fromARGB(255, 110, 110, 109),
                    ),
                  ), const SizedBox(
                    height: 3,
                  ),
                    Row(
                    children: [
                      const Text('Free',style: Styles.textStyle20a,),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: BookRating(rating: book.volumeInfo.averageRating ?? 4.5,
                        count: book.volumeInfo.ratingsCount ?? 477),
                      ),
                  
                    ],
                  
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
