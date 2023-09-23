import 'package:books_app/core/utils/appRouter.dart';
import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
         onTap: () {
          GoRouter.of(context).push(AppRouters.kBookDetailsscreen);
        },
        child: Row(
          children: [
            SizedBox(
              height: 120,
              child: AspectRatio(
                aspectRatio: 2.5 / 4.1,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: const Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14.copyWith(
                      color: const Color.fromARGB(255, 110, 110, 109),
                    ),
                  ), const SizedBox(
                    height: 3,
                  ),
                   const Row(
                    children: [
                      Text('19.99 €',style: Styles.textStyle20a,),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: BookRating(),
                      ),
                  
                    ],
                  
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
