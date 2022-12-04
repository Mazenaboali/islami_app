import 'package:flutter/material.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/tabs/suraDetailsScreen%20arg.dart';

class SuraTitleWidget extends StatelessWidget
{
  String title;
  int index ;
  SuraTitleWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.routeName,
          arguments:suraDetailsScreenArg(name: title, index: index)
        );
      },
      child: Container(

        alignment: Alignment.center,
       child: Text(title,style: TextStyle(
         fontSize: 30
       ),
       ),
      ),
    );


  }
}