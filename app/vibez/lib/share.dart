import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ShareWidget extends StatelessWidget {



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
                          Vibez.share_icon,
                          color: Colors.white,
                          size: 21.0),

                      new Text(
                        " Share",
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
            new Container(
              child:
              new Card(key: null,
                color: const Color(0xFF090909),
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
                              'https://i.imgur.com/Kgs0tRE.png',
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
                                  color: Colors.white,
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
                                color: Colors.white,
                                size: 27.0)
                          ]

                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 124.0),
                      ),
                      new SpinKitThreeBounce(color: Colors.pinkAccent, size: 40),
                      new Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 124.0),
                      ),
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.all(24.0),
                            ),



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
                              "Right now, ",
                              style: new TextStyle(fontSize:20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Roboto"),
                            ),
                            new DropdownButton<String>(
                              items: <String>['at a party 🎉', 'just chilling ✌️', 'in the car 🚗', 'on an adventure ⭐', 'getting blazed 🔥'].map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            )

                          ])
                    ]

                ),

              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
              width: 1.7976931348623157e+308,
              height: 460.0,
            ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
            new OutlineButton(
                color: Colors.white,
                child: new Text("Retry"),
                onPressed: null,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0))
            ),
            new Padding(
              padding: const EdgeInsets.all(12.0),
            ),
            new OutlineButton(
                color: Colors.white,
                child: new Text("Share"),
                onPressed: null,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0))
            ),

    ]),

          ]),

    );
  }
}