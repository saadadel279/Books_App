import 'package:books_app/core/utils/widgets/customBook_action_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 38, right: 38),
      child: Row(
        children: [
          Expanded(
            child: CustomBookActionButton(
              actionText: '19.99€',
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
              actionText: 'Free preview',
              textColor: Colors.white,
              backgroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
      
    );
  }
}
