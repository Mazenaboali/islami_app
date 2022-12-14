import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget
{
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var settingsprovider=Provider.of<SettingsProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         InkWell(
           onTap: (){
             settingsprovider.changetheme(ThemeMode.light);

           },
             child: settingsprovider.currenttheme==ThemeMode.light
                 ? selecteditem(AppLocalizations.of(context)!.light)
                 : unselecteditem(AppLocalizations.of(context)!.light)),
                

          SizedBox(height: 12,),
         InkWell(
             onTap: (){
               settingsprovider.changetheme(ThemeMode.dark);
             },
          child: settingsprovider.currenttheme==ThemeMode.light
         ? unselecteditem(AppLocalizations.of(context)!.dark)
             : selecteditem(AppLocalizations.of(context)!.dark))
        ],

      ),
    );
  }

  Widget selecteditem(String title)
  {
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style:Theme.of(context).textTheme.headline4?.copyWith(
            color: Theme.of(context).accentColor)),
        Icon(Icons.check,color: Theme.of(context).accentColor,)
      ],

    );
  }
  Widget unselecteditem(String title)
  {
    return Text(title,style:Theme.of(context).textTheme.headline4);
  }
}