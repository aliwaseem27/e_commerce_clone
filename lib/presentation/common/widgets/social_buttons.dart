import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.neutralColor,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)),
            padding: EdgeInsets.symmetric(vertical: AppSizes.xs, horizontal: AppSizes.sm),
            child: Icon(
              Icons.facebook,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        SizedBox(width: AppSizes.spaceBtwItems),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.neutralColor,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)),
            padding: EdgeInsets.symmetric(vertical: AppSizes.xs, horizontal: AppSizes.sm),
            child: Icon(
              Icons.facebook,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
