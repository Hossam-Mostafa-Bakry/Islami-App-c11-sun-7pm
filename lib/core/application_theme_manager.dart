import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          size: 28,
        )),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: "ElMessiri",
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          size: 28,
        )),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
}
