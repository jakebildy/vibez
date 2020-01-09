import 'package:flutter/material.dart';
import 'vibez_icons.dart';

class ActivityWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new ListView(
            children: <Widget>[

              new Card(key: null,
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
                            Vibez.fire_button,
                            size: 21.0),

                        new Text(
                          " Activity",
                          style: new TextStyle(fontSize: 20.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
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