import 'package:flutter/material.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/tabs/home_screen.dart';
import 'package:islami_app/my%20theme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: My_theme.lightTheme,
      routes: {
        homeScreen.route_name:(_)=>homeScreen(),
        SuraDetails.routeName:(_)=>SuraDetails()
      },
      initialRoute: homeScreen.route_name,
    );
  }
}