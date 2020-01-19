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
              new Padding(
                padding: const EdgeInsets.all(16.0),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new Image.network(
                      'https://i.imgur.com/Kgs0tRE.png',
                      fit: BoxFit.fill,
                      width: 80.0,
                      height: 80.0,
                    ),

                    new Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  "Jake",
                                  style: new TextStyle(fontSize:20.0,
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Roboto"),
                                ),
                                new Padding(
                                  padding: const EdgeInsets.all(2.0),
                                ),
                                new Icon(
                                    Icons.verified_user,
                                    color: const Color(0xFF2cb3fb),
                                    size: 23.0),

                              ]),
                          new Padding(
                            padding: const EdgeInsets.all(3.0),
                          ),
                          new Text(
                            "You shared a song",
                            style: new TextStyle(fontSize:16.0,
                                color: const Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Roboto"),
                          ),

                        ]),


                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40.0),
                          ),

                    new Text(
                      "10:44 AM",
                      style: new TextStyle(fontSize:10.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                          ]),
                    new Icon(
                        Icons.music_note,
                        color: Colors.green,
                        size: 40.0),
                  ]

              ),


            ]));

  }
}