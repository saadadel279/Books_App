import 'package:books_app/core/utils/appRouter.dart';
import 'package:books_app/core/utils/widgets/customLoading.dart';
import 'package:books_app/core/utils/widgets/custom_error_ms.dart';
import 'package:books_app/features/home/presentation/view%20models/featured_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/view/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
  physics: const BouncingScrollPhysics(),
  itemCount: state.books.length,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) {
    final imageLinks = state.books[index].volumeInfo.imageLinks;
    final thumbnail = state.books[index].volumeInfo.imageLinks?.thumbnail;
    
    // Check if imageLinks is null or the thumbnail is null
    if (imageLinks == null ||
        thumbnail == null) {
      // Return a SizedBox or any other placeholder widget
      return const SizedBox(
        width:0,
        height: 0, // Specify a width for the placeholder,
        child: Center(
          child: Text(""),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouters.kBookDetailsscreen);
          },
          child: CustomBookCover(imageURL: state.books[index].volumeInfo.imageLinks!.thumbnail!,)
        ),
      );
    }
  },
)

        );
        } else if(state is FeaturedBooksFaileur){
         
          return CustomErrorMessage(errMessage:state.errMessage ,);
        }else{
          return const CustomLoading() ;
        }
      },
    );
  }
}
