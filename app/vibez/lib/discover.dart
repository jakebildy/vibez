import 'package:flutter/material.dart';
import 'vibez_icons.dart';

class DiscoverWidget extends StatelessWidget {

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
                          Icons.bubble_chart,
                          size: 21.0),

                      new Text(
                        " Vibe",
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

            new Container(
              child:
              new Card(key: null,
                child:
                new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.all(14.0),
                            ),
                            new Image.network(
                              'https://i.imgur.com/Kgs0tRE.png',
                              fit:BoxFit.fill,
                              width: 100.0,
                              height: 100.0,
                            ),
                            new Padding(
                              padding: const EdgeInsets.all(4.0),
                            ),

                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.all(24.0),
                                  ),

                                  new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        new Text(
                                          "Jake",
                                          style: new TextStyle(fontSize:22.0,
                                              color: const Color(0xFF000000),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto"),
                                        ),

                                        new Icon(
                                            Icons.verified_user,
                                            color: const Color(0xFF2cb3fb),
                                            size: 29.0)
                                      ]

                                  ),

                                  new Text(
                                    "London, ON",
                                    style: new TextStyle(fontSize:16.0,
                                        color: const Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),

                                  new Padding(
                                    padding: const EdgeInsets.all(24.0),
                                  )
                                ]

                            ),

                            new Padding(
                              padding: const EdgeInsets.all(24.0),
                            ),

                            new Text(
                              "324",
                              style: new TextStyle(fontSize:24.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            ),


                            new Icon(
                                Vibez.fire_button,
                                color: const Color(0xFF000000),
                                size: 24.0),


                            new Padding(
                              padding: const EdgeInsets.all(24.0),
                            )
                          ]

                      )
                    ]

                ),
              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
              width: 1.7976931348623157e+308,
              height: 600.0,
            ),

            ]));

  }
}