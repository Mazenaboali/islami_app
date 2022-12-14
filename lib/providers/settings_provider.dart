import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier
{
  ThemeMode currenttheme=ThemeMode.light;
  String local='en';
  void changetheme(ThemeMode newmode)
  {
    currenttheme=newmode;
    notifyListeners();
  }
  void changelocal(String newlocal)
  {
    local=newlocal;
    notifyListeners();
  }
  String getMainBackgroundImage() {
     if(currenttheme == ThemeMode.dark)
       {  return 'assets/images/main_background_dark.png';}

     else {
       return 'assets/images/background_homescreen.png';
  }

  }
}