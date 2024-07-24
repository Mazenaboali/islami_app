import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'Api_manager/Radios.dart';

class RadioController extends StatefulWidget {
  Radios radioResponse;
  RadioController(
      {required this.radioResponse});

  @override
  State<RadioController> createState() => _RadioControllerState();
}
late AudioPlayer audioPlayer;
class _RadioControllerState extends State<RadioController> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer = AudioPlayer();
  }
  @override
  play() async {
    int result = await audioPlayer.play(widget.radioResponse.radioUrl??' ');
  }
  pause()async
  {
    await audioPlayer.pause();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(widget.radioResponse.name ?? ' ',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    play();
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).primaryColor,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () {
                   pause();
                  },
                  icon: Icon(
                    Icons.pause,
                    color: Theme.of(context).primaryColor,
                    size: 50,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
