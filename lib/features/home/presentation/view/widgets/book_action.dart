import 'package:books_app/core/utils/functions/launch_url.dart';
import 'package:books_app/core/utils/widgets/customBook_action_button.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 38, right: 38),
      child: Row(
        children: [
          const Expanded(
            child: CustomBookActionButton(
             
              actionText: 'Free',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomBookActionButton(
               onPressed: () async{
               await launchCustomUrl(context,book.volumeInfo.previewLink);
              },
              actionText: 'Free preview',
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
      
    );
  }
}
