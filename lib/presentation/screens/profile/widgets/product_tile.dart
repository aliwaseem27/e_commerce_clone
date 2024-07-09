import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productCategory,
  });

  final String productName;
  final String productImage;
  final String productCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              // Product Image
              Expanded(
                flex: 3,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: AppSizes.spaceBtwItems),
                    child: Image.asset(productImage),
                  ),
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
                      productName,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                    ),

                    // Product Size & quantity
                    Text(
                      "Qty: 1",
                      style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                    ),

                    // Product Category
                    Text(
                      productCategory,
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

              // Action Button
              Expanded(flex: 3, child: Container()),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 32,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                  ),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Track Order",
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
