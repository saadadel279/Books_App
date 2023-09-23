import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';

class AlsoLikeBooksListview extends StatelessWidget {
  const AlsoLikeBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: () {
                 
                },
                child: const CustomBookCover()),
            );
          }),
    );
  }
}