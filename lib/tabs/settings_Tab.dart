import 'package:flutter/material.dart';
import 'package:islami_app/language_bottom_sheet.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class settings_screen extends StatefulWidget
{
  @override
  State<settings_screen> createState() => _settings_screenState();
}

class _settings_screenState extends State<settings_screen> {
  @override
  Widget build(BuildContext context) {
    var settingsprovider=Provider.of<SettingsProvider>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
            ShowBottomsheet();
            },
            child: Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Theme.of(context).accentColor)
              ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    settingsprovider.currenttheme==ThemeMode.dark?AppLocalizations.of(context)!.dark:
                    AppLocalizations.of(context)!.light
                    ,style: Theme.of(context).textTheme.headline6,
                  ),
                )),
          ),
          SizedBox(height: 12,),
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Theme.of(context).accentColor)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    settingsprovider.local=='en'?'English':'العربية'
                    ,style: Theme.of(context).textTheme.headline6,
                  ),
                )),
          ),
        ],

      ),
    );
  }

  void ShowBottomsheet()
  {
    showBottomSheet(context: context, builder:(buildContext){
      return ThemeBottomSheet();
    } );
  }
  void showLanguageBottomSheet()
  {
    showModalBottomSheet(context: context, builder: (buildContext){
      return LangBottomSheet();
    },);
  }
}