import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarDetailsView extends StatelessWidget {
  const CustomAppBarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(onPressed:() {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close,size: 35,)),
          const Spacer(),
          IconButton(onPressed:() {
            
          },
          icon: const Icon(Icons.shopping_cart_outlined,size: 35,)),
          
          
        ],
      ),
    );
  }
}