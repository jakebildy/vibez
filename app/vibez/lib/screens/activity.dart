import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:vibez/content/message.dart';
import 'package:vibez/content/broadcast.dart';

class ActivityWidget extends StatelessWidget {

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
                            Vibez.fire_solid,
                            color: Colors.white,
                            size: 24.0),

                        new Text(
                          " Activity",
                          style: new TextStyle(fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto"),
                        ),

                        new Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 90),
                        ),

                      ]

                  ),




              ),
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 90),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),


                      new BroadcastWidget(username: "Harambe", color: Colors.green, imgUrl: 'https://i.imgur.com/9lYUiGL.png', location: "Cincinnati, OH", song: "Wassup"),
                      new BroadcastWidget(username: "Snoop Dogg", color: Colors.green, imgUrl: 'https://i.imgur.com/zRbQAba.png', location: "Los Angeles, CA", song: "Mask Off"),

                  ]

              ),
              new Padding(
                padding: const EdgeInsets.all(16.0),
              ),

                new MessageWidget(username: "Snoop Dogg", description: "Snoop sent a snippet", icon: Icons.play_circle_outline, color: Colors.pinkAccent, timestamp: "4:20 PM", imgUrl: 'https://i.imgur.com/zRbQAba.png',),

                new Padding(
                  padding: const EdgeInsets.all(5.0),
                ),

                new MessageWidget(username: "Harambe", description: "Harambe sent a song", icon: Icons.music_note, color: Colors.pinkAccent, timestamp: "10:44 AM", imgUrl: 'https://i.imgur.com/9lYUiGL.png',),

                new Padding(
                  padding: const EdgeInsets.all(5.0),
                ),

                new MessageWidget(username: "Yoda", description: "Yoda liked your song", icon:  Icons.music_note, color:  Colors.grey, timestamp: "Yesterday", imgUrl: 'https://i.imgur.com/zSeMBiW.png',)




            ]));

  }
}