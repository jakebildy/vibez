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
                            size: 21.0),

                        new Text(
                          " Activity",
                          style: new TextStyle(fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto"),
                        ),

                        new Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 90),
                        ),

                      ]

                  ),




              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),

                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 20.0),
                        child:
    new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

    new OutlineButton(
                          onPressed: () {},
                          borderSide: BorderSide(
                            color: Colors.pink, //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 2.5, //width of the border
                          ),
                          child:
                            new Image.network(
                            'https://i.imgur.com/Kgs0tRE.png',
                            fit: BoxFit.fill,
                            width: 60.0,
                            height: 60.0,
                          ),
                          shape: new CircleBorder(),

                          padding: const EdgeInsets.all(3.0),),
                    new Padding(
                      padding: const EdgeInsets.all(6.0),
                    ),
                    new Text(
                      "Jake",
                      style: new TextStyle(fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                    new Text(
                      "London, ON",
                      style: new TextStyle(fontSize: 16.0,
                          color: Colors.pink,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                        ])),
                    new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 90),
                    ),

                  ]

              ),

            ]));

  }
}