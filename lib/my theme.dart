import 'package:flutter/material.dart';

class My_theme
{
  static const Color light_primary=Color(0xFFB7935F);
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: light_primary,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,

      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
            fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(color: Colors.black)
    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 50,
          color: Colors.black
        ),
        unselectedIconTheme: IconThemeData(
          size: 35,
          color: Colors.white
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        selectedItemColor: Colors.black
      )
  );

}