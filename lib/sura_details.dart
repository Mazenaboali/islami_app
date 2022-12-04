import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/tabs/suraDetailsScreen%20arg.dart';

class SuraDetails extends StatelessWidget
{
  static const String routeName='sura_details';
  @override
  Widget build(BuildContext context) {
    suraDetailsScreenArg arg=(ModalRoute.of(context)?.settings.arguments) as suraDetailsScreenArg;
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_homescreen.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name),
        ),

      ),
    );

  }
}