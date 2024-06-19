import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../utils/constants/app_sizes.dart';
import 'widgets/delete_product_slider_action.dart';
import 'widgets/horizontal_product_card.dart';
import 'widgets/promo_code_input_field.dart';
import 'widgets/total_price_group.dart';

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
              child: Column(
                children: [
                  // Cart Products List
                  ListView.separated(
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
                            DeleteProductSliderAction(
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

                  SizedBox(height: AppSizes.spaceBtwSections),
                  // Promo Code
                  PromoCodeInputField(),

                  SizedBox(height: AppSizes.spaceBtwSections),
                  // Total Price
                  TotalPriceGroup(),

                  SizedBox(height: AppSizes.spaceBtwSections),
                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Checkout"),
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
