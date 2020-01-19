import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
                          Vibez.vinyl_icon,
                          color: Colors.white,
                          size: 21.0),

                      new Text(
                        " Library",
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


            ]));

  }
}