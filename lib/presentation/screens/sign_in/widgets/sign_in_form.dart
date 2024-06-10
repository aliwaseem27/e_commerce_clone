import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_strings.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(decoration: InputDecoration(labelText: AppStrings.emailAddress)),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.password,
              suffixIcon: IconButton(
                icon: Icon(CupertinoIcons.eye_solid),
                onPressed: () {},
              ),
            ),
          ),

          SizedBox(height: AppSizes.spaceBtwInputFields),

          // Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(AppStrings.forgotPassword),
              ),
            ],
          ),

          // Sign up button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  AppStrings.signIn,
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
