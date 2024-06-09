import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/app_strings.dart';

class SpecialDivider extends StatelessWidget {
  const SpecialDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            thickness: 1,
            // indent: AppSizes.xl,
            endIndent: AppSizes.sm,
          ),
        ),
        Text(dividerText.toUpperCase()),
        Flexible(
          child: Divider(
            thickness: 1,
            indent: AppSizes.sm,
            // endIndent: AppSizes.defaultSpace,
          ),
        ),
      ],
    );
  }
}
