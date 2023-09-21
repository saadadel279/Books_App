
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 6),
          child: Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 6),
          child: Text('4.5',style: Styles.textStyle16,),
        ),
        Text('(2390)',style: Styles.textStyle16.copyWith(color: const Color.fromARGB(255, 110, 110, 109)),)
      ],
    );
  }
}
