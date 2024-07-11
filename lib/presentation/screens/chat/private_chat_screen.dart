import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

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
                      return Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        padding: EdgeInsets.all(AppSizes.sm),
                        decoration: BoxDecoration(
                            color: messages[index]["senderName"] == personName
                                ? AppColors.secondaryColor
                                : AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg)),
                        child: Stack(
                          children: [
                            Text(
                              messages[index]["message"],
                              style: TextStyle(
                                color: messages[index]["senderName"] == personName ? Colors.black : Colors.white,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    messages[index]["time"],
                                    style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                                  ),
                                  SizedBox(
                                    width: AppSizes.xs,
                                  ),
                                  // Sent Mark
                                  messages[index]["senderName"] != personName
                                      ? Icon(
                                          Icons.done_all,
                                          size: 16,
                                          color: AppColors.neutralColor,
                                        )
                                      : SizedBox(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: AppSizes.spaceBtwItems);
                    },
                    itemCount: messages.length,
                  ),
                ),
              ),

              // Bottom Box
              Row(
                children: [
                  // Text Box
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Type A Message",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(
                          Icons.tag_faces_rounded,
                          color: AppColors.primaryColor,
                        ),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),

                  // Send Button
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.send),
                    ),
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
