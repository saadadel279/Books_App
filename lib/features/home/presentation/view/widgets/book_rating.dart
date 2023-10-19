import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
   const BookRating({super.key, required this.rating, required this.count});

  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 6),
          child: Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 18,
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(right: 6),
          child: Text(
            rating.toString(),
            style: Styles.textStyle16,
          ),
        ),
        Text(
          '($count)',
          style: Styles.textStyle16
              .copyWith(color: const Color.fromARGB(255, 110, 110, 109)),
        )
      ],
    );
  }
}
