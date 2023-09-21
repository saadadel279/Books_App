import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/view/widgets/best_seller_listview.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_appBar.dart';
import 'package:books_app/features/home/presentation/view/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30 ),
                child: CustomAppBar(),
              ),
              FeaturedBooksListview(),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30,top: 45),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20 ,),


            ],
            
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.only(left: 24),
            child: BestSellerListview(),
          ),
        )
      ],
      
      
    );
    
  }
}
