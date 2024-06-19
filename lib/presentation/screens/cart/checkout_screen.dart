import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/presentation/screens/cart/widgets/total_price_group.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/image_strings.dart';
import 'widgets/horizontal_product_card.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  final List<Map<String, String>> products = [
    {
      "name": "Sport Shoes",
      "image": ImageStrings.productImage1,
      "category": "Clothing",
    },
    {
      "name": "Black Jacket",
      "image": ImageStrings.productImage3,
      "category": "Clothing",
    },
    {
      "name": "Cricket Bat",
      "image": ImageStrings.productImage30,
      "category": "Sports",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order List
              Text(
                "Order List",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              ListView.separated(
                key: UniqueKey(),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return HorizontalProductCard(
                    productName: products[index]["name"]!,
                    productImage: products[index]["image"]!,
                    productCategory: products[index]["category"]!,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: AppSizes.sm);
                },
              ),

              SizedBox(height: AppSizes.spaceBtwSections),
              // Shipping address
              Text(
                "Shipping Address",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Home",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: Icons.home_filled,
              ),

              // Payment method
              SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                "Payment Method",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Cash On Delivery",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: FontAwesomeIcons.handHoldingDollar,
              ),

              // Shipping Type
              SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                "Shipping Type",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Standard",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: FontAwesomeIcons.handHoldingHand,
              ),

              // Total Price Group
              SizedBox(height: AppSizes.spaceBtwSections),
              TotalPriceGroup(),

              // Continue to Payment button
              SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue to Payment"),
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckoutInfoTile extends StatelessWidget {
  const CheckoutInfoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Leading Icon
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    leadingIcon,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                SizedBox(width: AppSizes.spaceBtwItems),

                // Title Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleSmall?.apply(color: AppColors.neutralColor),
                    ),
                  ],
                ),
              ],
            ),

            // Trailing Arrow
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}
