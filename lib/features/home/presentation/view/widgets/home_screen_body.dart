import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/view/widgets/best_seller_listview_item.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_appBar.dart';
import 'package:books_app/features/home/presentation/view/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeScreenBoy extends StatelessWidget {
  const HomeScreenBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListview(),
          Padding(
            padding: EdgeInsets.only(left: 8.0,top: 45),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          BestSellerListviewItem(),

        ],
      ),
    );
  }
}
