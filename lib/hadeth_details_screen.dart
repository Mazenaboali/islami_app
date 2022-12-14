
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';
class hadethDetails extends StatelessWidget
{
  static const String routeName='hadeth_details';
  Widget build(BuildContext context) {
  Hadeth arg=(ModalRoute.of(context)?.settings.arguments) as Hadeth;
  var  settingsprovider=Provider.of<SettingsProvider>(context);
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsprovider.getMainBackgroundImage()),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.Title),
        ),
        body:
        Card(

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
              child: Text(arg.content,style: Theme.of(context).textTheme.headline4,
              textDirection: TextDirection.rtl),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 45),
          elevation: 15,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),

          ),

        ),

      ),
    );

  }
}

