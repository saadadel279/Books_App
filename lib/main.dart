import 'package:books_app/constants.dart';
import 'package:books_app/features/splash/presentation/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor:  kprimaryBGcolor),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
