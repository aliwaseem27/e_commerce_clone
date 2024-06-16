import 'package:auto_route/annotations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/widgets/filters_list.dart';
import '../../common/widgets/grid_layout_four_elements.dart';
import '../../common/widgets/section_title.dart';
import 'widgets/category_vertical_widget.dart';
import '../../common/widgets/filter_list_item.dart';
import 'widgets/home_screen_categories.dart';
import 'widgets/home_screen_header.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/invide_friends_code_slider.dart';
import 'widgets/product_vertical_card.dart';

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

    final List<String> forYouTitles = ["All", "Popular", "Newest", "Most Sell", "Lowest Price", "Trending"];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: AppSizes.defaultSpace, right: AppSizes.defaultSpace, top: AppSizes.defaultSpace, bottom: AppSizes.sm),
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

              // Categories Header & List
              SectionTitle(title: "Category", onPressed: () {}),
              HomeScreenCategories(categories: categories),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Just For You
              SectionTitle(title: "Just For You", showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Filters
              FiltersList(forYouTitles: forYouTitles),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Products
              GridLayoutFourElements(element: ProductVerticalCard()),

              // Invite Friends
              SizedBox(height: AppSizes.spaceBtwItems),
              SectionTitle(title: "Invite Friends", onPressed: () {}),
              InviteFriendsCodeSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
