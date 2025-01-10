import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Sfpro',
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    iconTheme: const IconThemeData(color: AppColors.dark),
    scaffoldBackgroundColor: AppColors.white,
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    checkboxTheme: CheckboxThemeData(
      side: const BorderSide(color: AppColors.greyscale300),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      checkColor: const WidgetStatePropertyAll(AppColors.white),
    ),
    primaryColorDark: Colors.black,
    primaryColorLight: Colors.white,
    secondaryHeaderColor: Colors.grey[600],
    shadowColor: Colors.grey[200],
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: AppColors.dark),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primary
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(AppColors.primary),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 56)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.greyscale300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.greyscale300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.red),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      hintStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.greyscale300,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.greyscale300,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: WidgetStateTextStyle.resolveWith(
        (states) {
          final Color color = states.contains(WidgetState.focused) //
              ? AppColors.primary
              : AppColors.greyscale900;
          return TextStyle(
            fontSize: 14,
            color: color,
            fontWeight: FontWeight.w500,
          );
        },
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.greyscale100,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[500],
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: AppColors.black.withOpacity(0.05),
          ),
        ],
      ),
      dividerColor: Colors.transparent,
    ),
    colorScheme: ColorScheme(
      primary: Colors.grey,
      primaryContainer: Colors.white,
      secondary: Colors.white,
      secondaryContainer: Colors.grey[200],
      surface: Colors.white,
      error: Colors.red,
      onPrimary: Colors.black,
      onSecondary: Colors.grey[200]!,
      onSurface: Colors.black,
      onError: Colors.red,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.greyscale900,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.greyscale900,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.greyscale500,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.greyscale400,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.greyscale900,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        color: AppColors.greyscale900,
        // color: AppColors.primary,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.greyscale900,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.greyscale900,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: AppColors.greyscale500,
      ),
      headlineSmall: TextStyle(
        color: AppColors.blue,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),

    ),
  );
}

class AppColors {
  AppColors._();

  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGrey = Color(0xFFF8F9FD);
  static const Color greyscale = Color(0xFFF6F9FE);
  static const Color greyscale100 = Color(0xFFF1F5F9);
  static const Color greyscale200 = Color(0xFFE2E8F0);
  static const Color greyscale300 = Color(0xFFCBD5E1);
  static const Color greyscale400 = Color(0xFF94A3B8);
  static const Color greyscale500 = Color(0xFF64748B);
  static const Color greyscale800 = Color(0xFF919FFA);
  static const Color greyscale900 = Color(0xFF1D2048);
  static const Color darkGray = Color(0xFF475569);
  static const Color lightRed = Color(0xFFFFE8D5);
  static const Color red = Color(0xFFDB2E20);
  static const Color brightOrange = Color(0xFFFF4D2D);
  static const Color orangeRed = Color(0xFFFF8092);
  static const Color lightOrangeRed = Color(0xFFFFF0F0);
  static const Color lightOrange = Color(0xFFFFF3E8);
  static const Color orange = Color(0xFFFC891E);
  static const Color purple = Color(0xFF887EF9);
  static const Color lightPurple = Color(0xFFE8E2FF);
  static const Color lightYellow = Color(0xFFFFFBEC);
  static const Color yellow = Color(0xFFE6BB20);
  static const Color lightGreen = Color(0xFFF0FFE8);
  static const Color green = Color(0xFF23AA26);
  static const Color lightBlueGreen = Color(0xFFE8FFF6);
  static const Color blueGreen = Color(0xFF058A9D);
  // static const Color primary = Color(0xFF2742F7);
  static const Color primary = Color(0xFF1e2048);
  static const Color secondary = Color(0xFFFFFFFF);
  static const Color accent = Color(0xff2c2c42);
  static const Color darkBlue = Color(0xFF007AFF);
  static const Color lightBlue = Color(0xFFECF4FF);
  static const Color blue = Color(0xFF0870FF);
  static const Color dark = Color(0xFF0F172A);
  static const Color black = Colors.black;
  static const Color backgroundColorSecond = Color(0xFF1e2048);
  static const Color greyBorders2 = Color(0xFFCBD5E1);
  static const Color backgroundColor2 = Color(0xFFE2E8F0);
   static const Color backgroundColor3 = Color(0xFFf7f9fd);
}
