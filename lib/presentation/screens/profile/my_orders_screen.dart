import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_clone/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ActiveOrdersRoute(),
        CompletedOrdersRoute(),
        CancelledOrdersRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("My Orders"),
            leading: AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'Active', icon: Icon(Icons.abc)),
                Tab(text: 'Completed', icon: Icon(Icons.abc)),
                Tab(text: 'Cancelled', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
        );
      },
    );
    ;
  }
}
