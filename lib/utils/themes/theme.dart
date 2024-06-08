import 'package:flutter/material.dart';

import 'theme_widget/text_form_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Lato',
    inputDecorationTheme: AppTextFieldFormTheme.lightInputDecorationTheme,
  );
}
