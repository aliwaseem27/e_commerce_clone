import 'package:auto_route/annotations.dart';
import 'package:e_commerce_clone/presentation/common/widgets/my_search_bar.dart';
import 'package:e_commerce_clone/utils/constants/app_colors.dart';
import 'package:e_commerce_clone/utils/constants/app_sizes.dart';
import 'package:e_commerce_clone/utils/constants/app_strings.dart';
import 'package:e_commerce_clone/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = <Map<String, dynamic>>[
      {
        "title": "Ali Waseem",
        "subtitle": AppStrings.placeholder,
        "newMessages": 3,
        "profileImage": ImageStrings.person3,
        "time": "3:15",
      },
      {
        "title": "Zeena Adel",
        "subtitle": AppStrings.placeholder,
        "newMessages": 0,
        "profileImage": ImageStrings.person1,
        "time": "19:23",
      },
      {
        "title": "Henry Jack",
        "subtitle": AppStrings.placeholder,
        "newMessages": 1,
        "profileImage": ImageStrings.person2,
        "time": "11:30",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inbox"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              MySearchBar(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Chats
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ChatListTile(
                    title: chats[index]["title"],
                    subtitle: chats[index]["subtitle"],
                    newMessages: chats[index]["newMessages"],
                    profileImage: chats[index]["profileImage"],
                    time: chats[index]["time"],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: AppSizes.spaceBtwItems);
                },
                itemCount: chats.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.newMessages,
    required this.profileImage,
    this.onTap,
    required this.time,
  });

  final String title;
  final String subtitle;
  final int newMessages;
  final String profileImage;
  final Function()? onTap;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(profileImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 1,
            width: 1,
            margin: EdgeInsets.only(left: AppSizes.spaceBtwSections),
          ),
          newMessages > 0
              ? Container(
                  padding: const EdgeInsets.all(AppSizes.sm),
                  decoration: BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
                  child: Text("$newMessages", style: TextStyle(color: Colors.white)),
                )
              : SizedBox(
                  height: 24,
                ),
          Text(time, style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor))
        ],
      ),
    );
  }
}
