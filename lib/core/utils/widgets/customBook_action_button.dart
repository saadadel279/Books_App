import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookActionButton extends StatelessWidget {
  const CustomBookActionButton({
    super.key,
    required this.actionText,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
  });
  final String actionText;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
            )),
        child: Text(
          actionText,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
