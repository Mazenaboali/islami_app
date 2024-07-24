import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LangBottomSheet extends StatefulWidget
{
  @override
  State<LangBottomSheet> createState() => _LangBottomSheetState();
}

class _LangBottomSheetState extends State<LangBottomSheet> {
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
                settingsprovider.changelocal('en');

              },
              child: settingsprovider.local=='en'
                  ? selecteditem('English')
                  : unselecteditem('English')),


          SizedBox(height: 12,),
          InkWell(
              onTap: (){
                settingsprovider.changelocal('ar');

              },
              child: settingsprovider.local=='en'
                  ? unselecteditem('العربية')
                  : selecteditem('العربية'))
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
            color: Theme.of(context).hintColor)),
        Icon(Icons.check,color: Theme.of(context).hintColor,)
      ],

    );
  }

  Widget unselecteditem(String title)
  {
    return Text(title,style:Theme.of(context).textTheme.headline4);
  }
}