import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/app_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Screen Header text
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(AppStrings.signUp, style: Theme.of(context).textTheme.headlineMedium),
                        SizedBox(height: AppSizes.spaceBtwItems),
                        Text(
                          AppStrings.placeholder,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Sign up form
                  Form(
                    child: Column(
                      children: [
                        TextFormField(decoration: InputDecoration(labelText: AppStrings.fullName)),
                        SizedBox(height: AppSizes.spaceBtwInputFields),
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

                        // Terms & Conditions
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(AppStrings.agreeTo),
                            TextButton(
                              onPressed: () {},
                              child: Text(AppStrings.termsAndConditions),
                            ),
                          ],
                        ),

                        // Sign up button
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(AppStrings.signUp),
                            )),
                      ],
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Divider
                  Row(
                    children: [
                      Flexible(
                        child: Divider(
                          thickness: 1,
                          // indent: AppSizes.xl,
                          endIndent: AppSizes.sm,
                        ),
                      ),
                      Text(AppStrings.or.toUpperCase()),
                      Flexible(
                        child: Divider(
                          thickness: 1,
                          indent: AppSizes.sm,
                          // endIndent: AppSizes.defaultSpace,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Social Buttons
                  Row(
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
                  ),
                ],
              ),

              // sign in screen link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.alreadyHaveAnAccount),
                  TextButton(
                    onPressed: () {},
                    child: Text(AppStrings.signIn),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
