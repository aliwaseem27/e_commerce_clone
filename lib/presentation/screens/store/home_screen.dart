import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/home_screen_header.dart';
import 'widgets/home_search_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              HomeScreenHeader(),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Search Bar
              HomeSearchBar(),

              // Promo Banners
              Container(),

              // Categories

              // Products for you

              // Invite Friends
            ],
          ),
        ),
      ),
    );
  }
}
