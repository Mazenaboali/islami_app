import 'package:flutter/material.dart';
import 'package:islami_app/sura_title_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget
{
  List<String> suraName =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
              child: Image.asset('assets/images/quran_sura.png')),

          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  color: Theme.of(context).hintColor,
                  height: 2,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text( AppLocalizations.of(context)!.chapter_name,style: Theme.of(context).textTheme.headline4),
                ),
                Container(
                  color: Theme.of(context).hintColor,
                  height: 2,
                  width: double.infinity,
                ),
                Expanded(child: ListView.separated(itemBuilder: (_,index){return SuraTitleWidget(suraName[index],index); },
                    itemCount: suraName.length,separatorBuilder:(_,index){
                 return Container( color: Theme.of(context).hintColor, height: 1,
                    width:double.infinity ,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  );
                } ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}