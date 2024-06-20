import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../authentication/forget_password/forget_password_screen.dart';
import '../authentication/otp/otp_screen.dart';
import '../authentication/reset_password/reset_password_screen.dart';
import '../authentication/sign_in/sign_in_screen.dart';
import '../authentication/sign_up/sign_up_screen.dart';
import '../cart/add_card_screen.dart';
import '../cart/cart_screen.dart';
import '../cart/checkout_screen.dart';
import '../cart/payment_options_screen.dart';
import '../cart/shipping_address.dart';
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
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page, initial: true),
        AutoRoute(page: ForgetPasswordRoute.page),
        AutoRoute(page: CheckoutRoute.page),
        AutoRoute(page: ShippingAddressRoute.page),
        AutoRoute(page: PaymentOptionsRoute.page),
        AutoRoute(page: AddCardRoute.page),
        AutoRoute(
          page: NavigationRoute.page,
          // initial: true,
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
