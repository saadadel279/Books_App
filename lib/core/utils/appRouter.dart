import 'package:books_app/features/home/presentation/view/screens/book_details.dart';
import 'package:books_app/features/home/presentation/view/screens/home_screen.dart';
import 'package:books_app/features/search/presentation/view/screen/search_screen.dart';
import 'package:books_app/features/splash/presentation/views/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters{
  static const khomescreen='/homeScreen';
  static const kBookDetailsscreen='/homeScreen/bookdetails';
  static const kSearchscreen='/homeScreen/search';
static final router=GoRouter(
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
      builder: (context, state) => const BookDetailsScreen(),
      ),
    GoRoute(
      path: kSearchscreen,
      builder: (context, state) => const SearchScreen(),
      ),
],


);
}