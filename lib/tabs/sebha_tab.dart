import 'package:flutter/material.dart';
import 'package:islami_app/my%20theme.dart';

class SebhaTab extends StatefulWidget
{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int number=0;
  String tasbehType='سبحان الله';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
        children: [

          Positioned(
            height: MediaQuery.of(context).size.height*.50,
              child: Image.asset('assets/images/head_of_seb7a.png',)),
          Image.asset('assets/images/body_of_seb7a.png',),
          Text('عدد التسبيحات ',style: TextStyle(fontSize: 30),),
          InkWell(
            onTap: (){
              setState(() {
                number++;
                if(number==34)
                  {
                    tasbehType='الحمدلله';
                  }
                else if(number==67)
                  {
                    tasbehType='الله اكبر ';
                  }
                else if(number==100)
                  {
                    tasbehType=' سبحان الله';
                    number=0;
                  }
              });
            },
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.loose,
                children: [
                  Image.asset('assets/images/button_numbers_of_tasbehh.png'),
                  Text('${number}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                ],
                 ),
            ),
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/back_ground_type_of_tasbehh.png'),
                Text('${tasbehType}',style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.w500,color: Colors.white),)
              ],
            ),
              ElevatedButton(onPressed: (){
                number=0;
                tasbehType='سبحان الله';
                setState(() {

                });
              }, child: Text('0'),
                  style:ElevatedButton.styleFrom(
                primary: Color(0xFFB7935F)
              ))
          ],

          )

        ],
      ),

    );
  }
}