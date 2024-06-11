import 'package:auto_route/auto_route.dart';

import '../cart/cart_screen.dart';
import '../chat/chat_screen.dart';
import '../profile/profile_screen.dart';
import '../store/home_screen.dart';
import '../wishlist/wishlist_screen.dart';
import 'navigation_screen.dart';

part "app_router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavigationRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CartRoute.page),
            AutoRoute(page: WishlistRoute.page),
            AutoRoute(page: ChatRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
