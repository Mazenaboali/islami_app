import 'package:flutter/material.dart';

class My_theme
{
  static const Color light_primary=Color(0xFFB7935F);
  static const Color dark_primary=Color(0xFF141A2E);

  static const Color yellow=Color(0xFFFACC1D);
  static const Color white=Colors.white;
  static ThemeData lightTheme=ThemeData(

    bottomSheetTheme: BottomSheetThemeData(

      backgroundColor: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),topRight: Radius.circular(18)
        )
      )
    ),
    cardColor: white,
    accentColor: light_primary,
      textTheme: TextTheme(
          headline6: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
          headline4: TextStyle(
              fontSize: 28,
              color: Colors.black
          ),
        subtitle2: TextStyle(
            fontSize: 14,
            color: Colors.black
        ),
      ),
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
  static ThemeData darkTheme=ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: dark_primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),topRight: Radius.circular(18)
              )
          )
      ),
    cardColor: dark_primary,
    accentColor: yellow,
    textTheme: TextTheme(
      headline6: TextStyle(
        fontSize: 22,
        color: Colors.white
      ),
      headline4: TextStyle(

          fontSize: 28,
          color: Colors.white
      ),
      subtitle2: TextStyle(
          fontSize: 14,
          color: Colors.white
      ),

    ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: dark_primary,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: Colors.white)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: dark_primary,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(
              size: 50,
              color: yellow
          ),
          unselectedIconTheme: IconThemeData(
              size: 35,
              color: Colors.white,

          ),
          selectedLabelStyle: TextStyle(
              color: yellow
          ),
          selectedItemColor: yellow
      )
  );

}