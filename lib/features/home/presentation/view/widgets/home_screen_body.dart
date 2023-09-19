import 'package:books_app/features/home/presentation/view/widgets/custom_appBar.dart';
import 'package:books_app/features/home/presentation/view/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeScreenBoy extends StatelessWidget {
  const HomeScreenBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Column(
      children:  [
        CustomAppBar(),
        FeaturedBooksListview(),
        
      ],
    );
  }
}
