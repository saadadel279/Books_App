import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({super.key, required this.imageURL});
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(imageURL), fit: BoxFit.fill)),
      ),
    );
  }
}
