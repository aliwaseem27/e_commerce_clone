import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../utils/constants/app_sizes.dart';

@RoutePage()
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
    {
      "name": "Office Chair",
      "image": ImageStrings.productImage40,
      "category": "Furniture",
    },
    {
      "name": "Bedroom Lamb",
      "image": ImageStrings.productImage33,
      "category": "Furniture",
    },
    {
      "name": "Full Size Bed",
      "image": ImageStrings.productImage32,
      "category": "Furniture",
    },
  ];

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
          child: SlidableAutoCloseBehavior(
            child: SingleChildScrollView(
              child: ListView.separated(
                key: UniqueKey(),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    key: UniqueKey(),
                    endActionPane: ActionPane(
                      extentRatio: 0.2,
                      motion: ScrollMotion(),
                      dismissible: DismissiblePane(
                        closeOnCancel: true,
                        onDismissed: () {
                          setState(() {
                            products.removeAt(index);
                          });
                        },
                      ),
                      dragDismissible: true,
                      children: [
                        // SlidableAction(onPressed: noAction, label: "hello"),
                        DeleteCustomSliderAction(
                          onTap: () {
                            Slidable.of(context)?.close();
                            return ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Delete'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    child: HorizontalProductCard(
                      productName: products[index]["name"]!,
                      productImage: products[index]["image"]!,
                      productCategory: products[index]["category"]!,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: AppSizes.sm);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DeleteCustomSliderAction extends StatelessWidget {
  const DeleteCustomSliderAction({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: AppSizes.md),
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          ),
          child: Icon(
            Icons.delete_forever_rounded,
            color: Colors.red.shade500,
          ),
        ),
      ),
    );
  }
}

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
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
      child: Row(
        children: [
          // Product Image
          Expanded(
            flex: 2,
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
            flex: 4,
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
        ],
      ),
    );
  }
}

void noAction(BuildContext context) {}
