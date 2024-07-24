import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/RadioController.dart';
import '../Api_manager/RadioResponse.dart';

class radioTab extends StatefulWidget {
  @override
  State<radioTab> createState() => _radioTabState();
}
  late Future<RadioResponse>radioRespoonse;


class _radioTabState extends State<radioTab> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     radioRespoonse =getRadio();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<RadioResponse>(
        future: getRadio(),
        builder: (buildcontext, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Image.asset(
                        'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png')),
                Expanded(
                    flex: 2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: PageScrollPhysics(),
                      itemBuilder: (buildcontext, index) {
                        return RadioController( radioResponse: snapshot.data!.radios![index],
                        );
                      },
                    ))
              ],
            );
          }
          if (snapshot.hasError) {
            return Center(
                child: IconButton(
                    onPressed: () {
                      getRadio();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: Theme.of(context).primaryColor,
                      size: 20,
                    )));
          }
          var radio = snapshot.data?.radios;
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

Future<RadioResponse> getRadio() async {
  final resbonse = await http
      .get(Uri.parse('http://api.mp3quran.net/radios/radio_arabic.json'));
  if (resbonse.statusCode == 200) {
    return RadioResponse.fromJson(jsonDecode(utf8.decode(resbonse.bodyBytes)));
  } else {
    throw Exception('Failed to load data ');
  }
}
