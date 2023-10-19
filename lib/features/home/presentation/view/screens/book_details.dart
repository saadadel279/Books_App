import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/view%20models/relative_book_cubit/relative_book_cubit.dart';
import 'package:books_app/features/home/presentation/view/widgets/book_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.book});
  final BookModel book;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<RelativeBookCubit>(context).featchRelativeBooks(category: 
       widget.book.volumeInfo.categories?[0] ?? 'Computers' );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  BookDetailsScreenBody(book: widget.book,);
  }
}