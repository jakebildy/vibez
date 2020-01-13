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
                  color: Colors.black87,
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
                            size: 21.0),

                        new Text(
                          " Activity",
                          style: new TextStyle(fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
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