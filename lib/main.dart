import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/appRouter.dart';
import 'package:books_app/core/utils/server_locator.dart';
import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/features/home/presentation/view%20models/featured_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/view%20models/newest_cubit/featch_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  setupServicesLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=> FeaturedBooksCubit(
          getit.get<HomeRepoImp>()
        ),
        ),
        BlocProvider(create:(context)=> NewestBooksCubit(
          getit.get<HomeRepoImp>()
        ),
        ),
      ],
      child: MaterialApp.router(
          routerConfig: AppRouters.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:  kprimaryBGcolor,
          textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme) ,
      ),
        
          
        ),
    );
    
  }
}
