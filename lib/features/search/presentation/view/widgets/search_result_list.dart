
import 'package:flutter/material.dart';

class searchResultList extends StatelessWidget {
  const searchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BookListItem(),
          child: Text('kjkjkj'),
        );
      },
    );
  }
}
