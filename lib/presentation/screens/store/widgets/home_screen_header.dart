import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_clone/presentation/screens/core/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                FontAwesomeIcons.locationDot,
                color: AppColors.primaryColor,
                size: 16,
              ),
              SizedBox(width: AppSizes.sm),
              Text(
                "New York, USA",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: AppSizes.sm),
              Icon(CupertinoIcons.chevron_down, size: 16),
            ],
          ),
        ),
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.secondaryColor,
          child: IconButton(
            onPressed: () => context.router.push(const NotificationRoute()),
            icon: const Icon(FontAwesomeIcons.solidBell),
            iconSize: 16,
          ),
        ),
      ],
    );
  }
}
