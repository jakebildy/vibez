import 'package:flutter/material.dart';
import 'vibez_icons.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body:
        new ListView(
            children: <Widget>[


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
                              padding: const EdgeInsets.all(5.0),
                            ),

                            new Image.network(
                              'https://i.imgur.com/0O7yjDV.png',
                              fit: BoxFit.fill,
                              width: 40.0,
                              height: 40.0,
                            ),
                            new Padding(
                              padding: const EdgeInsets.all(4.0),
                            ),
                            new Text(
                              "jake",
                              style: new TextStyle(fontSize:17.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                            new Icon(
                                Icons.verified_user,
                                color: const Color(0xFF2cb3fb),
                                size: 23.0),

                            new Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 124.0),
                            ),

                            new Icon(
                                Icons.more_vert,
                                color: const Color(0xFF000000),
                                size: 27.0)
                          ]

                      ),

                      new Image.network(
                        'https://www.udiscovermusic.com/wp-content/uploads/2019/10/Tame-Impala-The-Slow-Rush.jpg',
                        fit:BoxFit.fill,
                        width: 300.0,
                        height: 300.0,
                      ),

                      new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.all(24.0),
                            ),

                            new Icon(
                                Vibez.fire_button,
                                color: const Color(0xFF000000),
                                size: 27.0),

                            new Text(
                            " 392 ",
                              style: new TextStyle(fontSize:20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                            new Text(
                              "people liked this",
                              style: new TextStyle(fontSize:20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            )
                          ]

                      ),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      ),
                      new Text(
                        "3 hours ago, at a party 🎉",
                        style: new TextStyle(fontSize:20.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )

                      ])
                    ]

                ),

              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
              width: 1.7976931348623157e+308,
              height: 690.0,
            ),


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
                              padding: const EdgeInsets.all(5.0),
                            ),

                            new Image.network(
                              'https://i.imgur.com/0O7yjDV.png',
                              fit: BoxFit.fill,
                              width: 40.0,
                              height: 40.0,
                            ),
                            new Padding(
                              padding: const EdgeInsets.all(4.0),
                            ),
                            new Text(
                              "jake",
                              style: new TextStyle(fontSize:17.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),

                            new Icon(
                                Icons.verified_user,
                                color: const Color(0xFF2cb3fb),
                                size: 23.0),

                            new Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 124.0),
                            ),

                            new Icon(
                                Icons.more_vert,
                                color: const Color(0xFF000000),
                                size: 27.0)
                          ]

                      ),

                      new Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/c/c9/Phil_Collins_InTheAirTonight.jpg',
                        fit:BoxFit.fill,
                        width: 300.0,
                        height: 300.0,
                      ),

                      new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.all(24.0),
                            ),

                            new Icon(
                                Vibez.fire_button,
                                color: const Color(0xFF000000),
                                size: 27.0),

                            new Text(
                              " 422 ",
                              style: new TextStyle(fontSize:20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            ),
                            new Text(
                              "people liked this",
                              style: new TextStyle(fontSize:20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto"),
                            )
                          ]

                      ),
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            ),
                            new Text(
                              "4 hours ago, at home",
                              style: new TextStyle(fontSize:20.0,
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            )

                          ])
                    ]

                ),

              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
              width: 1.7976931348623157e+308,
              height: 690.0,
            )
        ]),

      );
    }
  }