import 'package:flutter/material.dart';
import 'package:islami_app/my%20theme.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/tabs/hadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_Tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget
{
  static const String route_name='home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedindex=0;
  List<Widget>tab=[QuranTab(),HadethTab(),SebhaTab(),radioTab(),settings_screen()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var settingsProvider=Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getMainBackgroundImage()),
          fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),),
        body:tab[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlyselectedindex) {
            selectedindex=newlyselectedindex;
            setState(() {
            });
          },
          currentIndex:selectedindex ,
          items: [
            BottomNavigationBarItem(
                backgroundColor:  Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
              label: AppLocalizations.of(context)!.quran
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: AppLocalizations.of(context)!.mention
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: AppLocalizations.of(context)!.radio
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label:AppLocalizations.of(context)!.settings
            ),
          ],
        ),

        )
    );

  }
}
