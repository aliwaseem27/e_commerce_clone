import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Cart"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace,
              top: AppSizes.defaultSpace,
              bottom: AppSizes.sm),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(AppSizes.md),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
              ),
              child: Row(
                children: [
                  // Product Image
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: AppSizes.spaceBtwItems),
                      child: Image.asset(ImageStrings.productImage6),
                    ),
                  ),

                  // Product Details
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Name
                        Text(
                          "Black T-Shirt",
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        // Product Size & quantity
                        Text(
                          "Qty: 1",
                          style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                        ),

                        // Product Category
                        Text(
                          "Electronics",
                          style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                        ),

                        // Product Price
                        Text(
                          "\$800",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  // Product Cart Actions
                  FittedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove),
                            ),
                            Text("1"),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
