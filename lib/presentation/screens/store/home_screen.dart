import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/widgets/section_title.dart';
import 'widgets/category_vertical_widget.dart';
import 'widgets/home_screen_header.dart';
import 'widgets/home_search_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {"title": "Sports", "image": ImageStrings.sportIcon},
      {"title": "Clothing", "image": ImageStrings.clothIcon},
      {"title": "Shoes", "image": ImageStrings.shoeIcon},
      {"title": "Cosmetics", "image": ImageStrings.cosmeticsIcon},
      {"title": "Animals", "image": ImageStrings.animalIcon},
      {"title": "Toys", "image": ImageStrings.toyIcon},
      {"title": "Furniture", "image": ImageStrings.furnitureIcon},
      {"title": "Jewelery", "image": ImageStrings.jeweleryIcon},
      {"title": "Electronics", "image": ImageStrings.electronicsIcon},
    ];
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

              SizedBox(height: AppSizes.spaceBtwItems),

              // Promo Banners
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: AppColors.primaryColor,
              ),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Categories Header
              SectionTitle(
                title: "Category",
                onPressed: () {},
              ),

              // Categories List
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryVerticalWidget(
                      title: categories[index].values.first,
                      image: categories[index].values.last,
                    );
                  },
                ),
              ),

              // Products for you

              // Invite Friends
            ],
          ),
        ),
      ),
    );
  }
}
