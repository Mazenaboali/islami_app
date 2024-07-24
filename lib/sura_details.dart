import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/tabs/suraDetailsScreen%20arg.dart';
import 'package:islami_app/verses_widget.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget
{
  static const String routeName='sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    suraDetailsScreenArg arg=(ModalRoute.of(context)?.settings.arguments) as suraDetailsScreenArg;
    if(verses.isEmpty)
    readFile(arg.index+1);
    var settingsprovider=Provider.of<SettingsProvider>(context);
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsprovider.getMainBackgroundImage()),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name),
        ),
        body: verses.isEmpty?
            Center(child: CircularProgressIndicator(),):
        Card(
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 45),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          child: ListView.separated(itemBuilder: (_,index){
            return versesWidget(verses[index],index+1);
          },itemCount: verses.length,
          separatorBuilder: (_,__){
            return Container(
              height: 1,
              color: Theme.of(context).hintColor,
              margin: EdgeInsets.symmetric(horizontal: 60),
              padding: EdgeInsets.symmetric(vertical: 18,horizontal: 8),
            );
          }),

        ),

      ),
    );

  }

  void readFile(int fileindex)async
  {
    String fileContent= await rootBundle.loadString('assets/files/$fileindex.txt');
    List<String>lines=fileContent.trim().split('\n');
    //rebuild
    setState(() {
      verses=lines;
    });

  }
}