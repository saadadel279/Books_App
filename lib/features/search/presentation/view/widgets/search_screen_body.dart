import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/search/presentation/view/widgets/custom_text_search_field.dart';
import 'package:books_app/features/search/presentation/view/widgets/search_result_list.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 12,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: searchResultList(),
          )
        ],
      ),
    );
  }
}
