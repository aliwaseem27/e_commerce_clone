import 'package:flutter/material.dart';

import '../../../../utils/constants/app_strings.dart';

class DontHaveAnAccountAction extends StatelessWidget {
  const DontHaveAnAccountAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.dontHaveAnAccount),
        TextButton(
          onPressed: () {},
          child: Text(AppStrings.signUp),
        ),
      ],
    );
  }
}
