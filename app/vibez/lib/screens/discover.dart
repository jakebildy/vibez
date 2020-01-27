import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vibez/content/song.dart';

class DiscoverWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      new ListView(
          children: <Widget>[

            new Card(key: null,
                color: const Color(0xFF090909),
                child:
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[


                      new Padding(
                        padding: const EdgeInsets.all(10.0),
                      ),

                      new Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 21.0),

                      new Text(
                        " Events",
                        style: new TextStyle(fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),
                      ),

                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 90),
                      ),

                    ]

                )),

            new SongWidget(name: "Stick Talk", author: "Future", icon: Icons.play_circle_outline, color: Colors.pinkAccent, album: "DS2 (Deluxe)", imgUrl: 'https://images.complex.com/complex/image/upload/c_limit,dpr_auto,q_90,w_720/fl_lossy,pg_1/Screen_Shot_2015-07-17_at_2.45.32_PM_h5abhl.jpg',),


            ]));

  }
}