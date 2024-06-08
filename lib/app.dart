import 'package:device_preview/device_preview.dart';
import 'package:e_commerce_clone/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_clone/utils/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: SignUpScreen(),
    );
  }
}
