import 'package:flutter/material.dart';
import 'package:islami_app/my%20theme.dart';
import 'package:islami_app/tabs/hadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';

class homeScreen extends StatefulWidget
{
  static const String route_name='home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedindex=0;
  List<Widget>tab=[QuranTab(),HadethTab(),SebhaTab(),radioTab()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_homescreen.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامي '),),
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
                backgroundColor: My_theme.light_primary,
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
              label: 'quran'
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                label: 'hadeth'
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'sebha'
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'radio'
            ),
          ],
        ),

        )
    );

  }
}
