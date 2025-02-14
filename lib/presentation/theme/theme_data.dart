import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  // Base colors
  primaryColor: const Color(0xFF379F53),
  scaffoldBackgroundColor: Colors.white,
  //set 0xFF379F53 as primary swatch
  primarySwatch: MaterialColor(0xFF379F53, <int, Color>{
    50: const Color(0xFFE2F6E2),
    100: const Color(0xFFB6E9B6),
    200: const Color(0xFF8AD98A),
    300: const Color(0xFF5DCB5D),
    400: const Color(0xFF3DBF3D),
    500: const Color(0xFF1DB31D),
    600: const Color(0xFF1AAE1A),
    700: const Color(0xFF16A816),
    800: const Color(0xFF13A313),
    900: const Color(0xFF0CA90C),
  }),
  // App bar theme
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: const Color(0xFF379F53),
    inactiveTrackColor: Colors.grey[200],
    thumbColor: const Color(0xFF379F53),
    overlayColor: const Color(0xFF379F53).withOpacity(0.2),
    valueIndicatorColor: const Color(0xFF379F53),
    valueIndicatorTextStyle: const TextStyle(
      color: Colors.white,
    ),
  ),
  // Text theme
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.black87,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.black87,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: Colors.black45,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      color: Colors.black45,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: Colors.black45,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  splashColor: const Color.fromARGB(255, 236, 255, 236),
  iconTheme: const IconThemeData(color: Color(0xFF379F53), size: 24),
  // linear progress indicator theme
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: const Color(0xFF379F53),
  ),
  // Input decoration theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey[300]!,
      ),
    ),
    hintStyle: TextStyle(
      color: Colors.grey[500],
      fontSize: 14,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey[300]!,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: Colors.black87,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  ),

  // Button theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFE2F6E2),
      overlayColor: const Color(0xFFB6E9B6),
      foregroundColor: Colors.grey[200],
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

  //text button theme
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      overlayColor: const Color(0xFFB6E9B6),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF379F53),
      ),
    ),
  ),

  // Card theme
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: BorderSide(color: Colors.black12, width: 1),
    ),
    color: Color(0xFFFDFDFD),
  ),
//bottom navigation bar theme
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: const Color(0xFF379F53),
    unselectedItemColor: Colors.grey[400],
    selectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  ),
  // Divider theme
  dividerTheme: const DividerThemeData(
    color: Colors.grey,
    thickness: 1,
    space: 0,
  ),
  // Dialog theme
  dialogTheme: const DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  ),
  // Text form field theme
);
