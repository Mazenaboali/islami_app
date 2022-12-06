import 'package:flutter/material.dart';

class versesWidget extends StatelessWidget
{
  String ayat;
  int nos_ayat;
  versesWidget(this.ayat,this.nos_ayat);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
      alignment: Alignment.center,
      child: Text(' $ayat [$nos_ayat]',textAlign: TextAlign.center,style: TextStyle(
        fontSize: 18,
      ),
        textDirection: TextDirection.rtl,
      ),

    );
  }
}