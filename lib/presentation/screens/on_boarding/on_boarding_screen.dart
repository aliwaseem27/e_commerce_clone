import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
        ),
      ),
    );
  }
}
