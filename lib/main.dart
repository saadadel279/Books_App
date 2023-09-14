import 'package:books_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookApp());
  
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
     
    );
  }
}
