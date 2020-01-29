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
                    new Stack(
                      children: <Widget>[


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

                ),


                      ]),


),


        new Card(key: null,
            color: new Color(0xff4a0023),
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
            child:
            new Column(
                children: <Widget> [
                  new Text("Hello",
                  style: new TextStyle(fontSize: 30.0,
                    color: Colors.pink,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),),
                  new Padding(
                    padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 90),
                  ),

                ])),

            new Card(key: null,
                color: new Color(0xff663500),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child:
                new Column(
                    children: <Widget> [
                      new Text("Hello",
                        style: new TextStyle(fontSize: 30.0,
                            color: Colors.orange,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 90),
                      ),

                    ])),

            new Card(key: null,
                color: new Color(0xff006644),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child:
                new Column(
                    children: <Widget> [
                      new Text("Hello",
                        style: new TextStyle(fontSize: 30.0,
                            color: Colors.green,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 90),
                      ),

                    ])),

            new Card(key: null,
                color: new Color(0xff003b66),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child:
                new Column(
                    children: <Widget> [
                      new Text("Hello",
                        style: new TextStyle(fontSize: 30.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 90),
                      ),

                    ]))


            ]));

  }
}