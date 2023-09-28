import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, this.errMessage});
  final String? errMessage;

  @override
  Widget build(BuildContext context) {
    return Text('$errMessage',style: Styles.textStyle18,);
  }
}