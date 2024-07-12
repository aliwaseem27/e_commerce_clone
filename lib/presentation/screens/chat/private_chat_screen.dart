import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/chat_bubble.dart';
import 'widgets/chat_input_field.dart';

@RoutePage()
class PrivateChatScreen extends StatelessWidget {
  const PrivateChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {
        "senderName": "Liam Peterson",
        "message": AppStrings.placeholder,
        "time": "9:39",
      },
      {
        "senderName": "Ali Waseem",
        "message": AppStrings.placeholder,
        "time": "9:31",
      },
      {
        "senderName": "Liam Peterson",
        "message": AppStrings.placeholder,
        "time": "9:32",
      },
      {
        "senderName": "Ali Waseem",
        "message": AppStrings.placeholder,
        "time": "9:34",
      },
      {
        "senderName": "Liam Peterson",
        "message": AppStrings.placeholder,
        "time": "9:39",
      },
      {
        "senderName": "Ali Waseem",
        "message": AppStrings.placeholder,
        "time": "9:31",
      },
      {
        "senderName": "Liam Peterson",
        "message": AppStrings.placeholder,
        "time": "9:32",
      },
      {
        "senderName": "Ali Waseem",
        "message": AppStrings.placeholder,
        "time": "9:34",
      },
    ];
    const String personName = "Liam Peterson";
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(personName),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: AppSizes.defaultSpace),
            child: CircleAvatar(
              backgroundColor: AppColors.secondaryColor,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ListView.separated(
                    shrinkWrap: true,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return ChatBubble(message: messages[index], personName: personName);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: AppSizes.spaceBtwItems);
                    },
                    itemCount: messages.length,
                  ),
                ),
              ),

              // Bottom Box
              ChatInputField(),
            ],
          ),
        ),
      ),
    );
  }
}
