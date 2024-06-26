import 'package:device_preview/device_preview.dart';
import 'package:e_commerce_clone/presentation/screens/authentication/otp/otp_screen.dart';
import 'package:e_commerce_clone/presentation/screens/core/app_router.dart';
import 'package:e_commerce_clone/utils/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
