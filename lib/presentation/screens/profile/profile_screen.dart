import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/app_strings.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_list_tile.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Header
              Text(
                "Profile",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageStrings.profileImage),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                "Ali Waseem",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "ali.waseem27@gmail.com",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.neutralColor),
              ),

              SizedBox(height: AppSizes.spaceBtwSections),

              // Profile Tiles
              ProfileListTile(leadingIcon: Icons.person, title: AppStrings.myAccount),
              ProfileListTile(leadingIcon: Icons.credit_card, title: AppStrings.paymentMethod),
              ProfileListTile(leadingIcon: Icons.list_alt_rounded, title: AppStrings.myOrders),
              ProfileListTile(leadingIcon: Icons.settings, title: AppStrings.settings),
              ProfileListTile(leadingIcon: Icons.headset_mic_outlined, title: AppStrings.helpCenter),
              ProfileListTile(leadingIcon: Icons.privacy_tip, title: AppStrings.privacyPolicy),
              ProfileListTile(leadingIcon: Icons.person_add_alt_1_sharp, title: AppStrings.inviteFriends),
              ProfileListTile(leadingIcon: Icons.exit_to_app, title: AppStrings.signOut),
            ],
          ),
        ),
      ),
    );
  }
}
