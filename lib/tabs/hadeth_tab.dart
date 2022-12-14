import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth.dart';
import 'package:islami_app/hadeth_title_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<Hadeth>Hadeths=[];
class HadethTab extends StatefulWidget
{

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(Hadeths.isEmpty)
      loadFile();
    return Column(

      children: [
        Image.asset('assets/images/ahadeth_sura.png'),
        Container(
          height: 1,
          width: double.infinity,
          color: Color(0xFFB7935F),
        ),
        Text(AppLocalizations.of(context)!.hadeth,style: Theme.of(context).textTheme.headline4),
        Container(
          height: 1,
          width: double.infinity,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.separated(itemBuilder: (_,index){return HadethTitleWidget(Hadeths[index]);},

              separatorBuilder: (_,__){return   Container(
                height: 1,
                width: double.infinity,
                color: Color(0xFFB7935F),
              );},
              itemCount: Hadeths.length),
        )
      ],
    );

  }
  void loadFile()async
  {

    List<Hadeth>Allhadeth=[];

    String content=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>AllHadetheContent=content.trim().split('#');
    for(int i=0;i<AllHadetheContent.length;i++)
    {
      String SingleContent=AllHadetheContent[i];
      List<String>SingleHadethLines=SingleContent.trim().split("\n");
      String title=SingleHadethLines[0];
      SingleHadethLines.removeAt(0);
      String content=SingleHadethLines.join("\n");
      Hadeth h=Hadeth(title, content);
      Allhadeth.add(h);

    }

    setState(() {
      Hadeths=Allhadeth;
    });

  }
}

