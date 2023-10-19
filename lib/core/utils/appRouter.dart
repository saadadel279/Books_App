import 'package:books_app/core/utils/server_locator.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/view%20models/relative_book_cubit/relative_book_cubit.dart';
import 'package:books_app/features/home/presentation/view/screens/book_details.dart';
import 'package:books_app/features/home/presentation/view/screens/home_screen.dart';
import 'package:books_app/features/search/presentation/view/screen/search_screen.dart';
import 'package:books_app/features/splash/presentation/views/screens/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const khomescreen = '/homeScreen';
  static const kBookDetailsscreen = '/homeScreen/bookdetails';
  static const kSearchscreen = '/homeScreen/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: khomescreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsscreen,
        builder: (context, state) =>  BlocProvider(
          create: (context) => RelativeBookCubit(getit.get<HomeRepoImp>()),
          child:  BookDetailsScreen(book:state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchscreen,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
