import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/widgets/section_title.dart';
import 'widgets/category_vertical_widget.dart';
import 'widgets/filter_list_item.dart';
import 'widgets/home_screen_header.dart';
import 'widgets/home_search_bar.dart';
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
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 150,
              //   color: AppColors.primaryColor,
              // ),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Categories Header
              SectionTitle(
                title: "Category",
                onPressed: () {},
              ),

              // Categories List
              SizedBox(
                height: 100,
                child: ListView.separated(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: AppSizes.spaceBtwItems);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: CategoryVerticalWidget(
                        title: categories[index].values.first,
                        image: categories[index].values.last,
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Products for you
              SectionTitle(
                title: "Just For You",
                showButton: false,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Just For You
              SizedBox(
                height: 34,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(width: AppSizes.sm);
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: forYouTitles.length,
                  itemBuilder: (context, index) {
                    return FilterListItem(
                      title: forYouTitles[index],
                      selected: index == 0,
                    );
                  },
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Products
              GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppSizes.spaceBtwItems,
                  crossAxisSpacing: AppSizes.spaceBtwItems,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return ProductVerticalCard();
                },
              ),

              // Invite Friends
            ],
          ),
        ),
      ),
    );
  }
}
