import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8),
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
        ],
      ),
    );
  }
}