import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 3/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
              color: kprimaryBGcolor,
              image: DecorationImage(
                  image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
