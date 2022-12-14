import 'package:flutter/material.dart';
import 'package:islami_app/hadeth.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/tabs/suraDetailsScreen%20arg.dart';

class HadethTitleWidget extends StatelessWidget
{
  Hadeth h;
  HadethTitleWidget(this.h);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadethDetails.routeName,
            arguments:h);

      },
      child: Container(

        alignment: Alignment.center,
        child: Text(h.Title,style: Theme.of(context).textTheme.headline4
        ),
      ),
    );


  }
}