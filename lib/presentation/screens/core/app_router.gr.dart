// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddCardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddCardScreen(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreen(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckoutScreen(key: args.key),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgetPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationScreen(),
      );
    },
    OTPRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OTPScreen(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    PaymentOptionsRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentOptionsRouteArgs>(
          orElse: () => const PaymentOptionsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentOptionsScreen(key: args.key),
      );
    },
    PrivateChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivateChatScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    ShippingAddressRoute.name: (routeData) {
      final args = routeData.argsAs<ShippingAddressRouteArgs>(
          orElse: () => const ShippingAddressRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShippingAddressScreen(key: args.key),
      );
    },
    ShippingTypeRoute.name: (routeData) {
      final args = routeData.argsAs<ShippingTypeRouteArgs>(
          orElse: () => const ShippingTypeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ShippingTypeScreen(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [AddCardScreen]
class AddCardRoute extends PageRouteInfo<void> {
  const AddCardRoute({List<PageRouteInfo>? children})
      : super(
          AddCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CheckoutScreen]
class CheckoutRoute extends PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const PageInfo<CheckoutRouteArgs> page =
      PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ForgetPasswordScreen]
class ForgetPasswordRoute extends PageRouteInfo<void> {
  const ForgetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NavigationScreen]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OTPScreen]
class OTPRoute extends PageRouteInfo<void> {
  const OTPRoute({List<PageRouteInfo>? children})
      : super(
          OTPRoute.name,
          initialChildren: children,
        );

  static const String name = 'OTPRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentOptionsScreen]
class PaymentOptionsRoute extends PageRouteInfo<PaymentOptionsRouteArgs> {
  PaymentOptionsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentOptionsRoute.name,
          args: PaymentOptionsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PaymentOptionsRoute';

  static const PageInfo<PaymentOptionsRouteArgs> page =
      PageInfo<PaymentOptionsRouteArgs>(name);
}

class PaymentOptionsRouteArgs {
  const PaymentOptionsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PaymentOptionsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PrivateChatScreen]
class PrivateChatRoute extends PageRouteInfo<void> {
  const PrivateChatRoute({List<PageRouteInfo>? children})
      : super(
          PrivateChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivateChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordScreen]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShippingAddressScreen]
class ShippingAddressRoute extends PageRouteInfo<ShippingAddressRouteArgs> {
  ShippingAddressRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ShippingAddressRoute.name,
          args: ShippingAddressRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ShippingAddressRoute';

  static const PageInfo<ShippingAddressRouteArgs> page =
      PageInfo<ShippingAddressRouteArgs>(name);
}

class ShippingAddressRouteArgs {
  const ShippingAddressRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShippingAddressRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ShippingTypeScreen]
class ShippingTypeRoute extends PageRouteInfo<ShippingTypeRouteArgs> {
  ShippingTypeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ShippingTypeRoute.name,
          args: ShippingTypeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ShippingTypeRoute';

  static const PageInfo<ShippingTypeRouteArgs> page =
      PageInfo<ShippingTypeRouteArgs>(name);
}

class ShippingTypeRouteArgs {
  const ShippingTypeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShippingTypeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WishlistScreen]
class WishlistRoute extends PageRouteInfo<void> {
  const WishlistRoute({List<PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
