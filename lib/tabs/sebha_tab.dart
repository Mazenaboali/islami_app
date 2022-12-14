import 'package:flutter/material.dart';
import 'package:islami_app/my%20theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int number = 0;
  String tasbehType = 'سبحان الله';
  @override
  Widget build(BuildContext context) {
    var mediaquery=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height:MediaQuery.of(context).size.height * 0.36,
            child: Stack(children: [
              Positioned(
                child: Image.asset(
                  'assets/images/head_of_seb7a.png',
                  height: mediaquery*0.105,

                ),
                left: mediaquery*0.22,

              ),
              Positioned(
                child: Image.asset(
                  'assets/images/body_of_seb7a.png',
                  height: mediaquery*0.22,
                ),
               top: 65,
                left: mediaquery*0.12,
              ),
            ]),
          ),

          Text(
            'عدد التسبيحات ',
            style: Theme.of(context).textTheme.headline6
          ),
          InkWell(
            onTap: () {
              setState(() {
                number++;
                if (number == 34) {
                  tasbehType = 'الحمدلله';
                } else if (number == 67) {
                  tasbehType = 'الله اكبر ';
                } else if (number == 100) {
                  tasbehType = ' سبحان الله';
                  number = 0;
                }
              });
            },
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.loose,
                children: [
                  Image.asset('assets/images/button_numbers_of_tasbehh.png'),
                  Text(
                    '${number}',
                    style: Theme.of(context).textTheme.headline6
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/back_ground_type_of_tasbehh.png'),
                  Text(
                    '${tasbehType}',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    number = 0;
                    tasbehType = 'سبحان الله';
                    setState(() {});
                  },
                  child: Text('0',style: Theme.of(context).textTheme.headline6,),
                  style: ElevatedButton.styleFrom(primary: Color(0xFFB7935F)))
            ],
          )
        ],
      ),
    );
  }
}
