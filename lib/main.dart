import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/generated/l10n.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/tabs/home_screen.dart';
import 'package:islami_app/my%20theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsprovider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      locale: Locale(settingsprovider.local),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: My_theme.lightTheme,
      darkTheme: My_theme.darkTheme,
      themeMode: settingsprovider.currenttheme,
      routes: {
        homeScreen.route_name: (_) => homeScreen(),
        SuraDetails.routeName: (_) => SuraDetails(),
        hadethDetails.routeName: (_) => hadethDetails(),
      },
      initialRoute: homeScreen.route_name,
    );
  }
}
