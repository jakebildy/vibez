import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
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
                                  fontWeight: FontWeight.w800,
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
                        padding: const EdgeInsets.symmetric(vertical: 148.0, horizontal: 124.0),
                      ),
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  new OutlineButton(
                                    onPressed: () {},
                                    borderSide: BorderSide(
                                      color: Colors.pink, //Color of the border
                                      style: BorderStyle.solid, //Style of the border
                                      width: 1.2, //width of the border
                                    ),
                                    child:  new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          new Icon(
                                            Icons.send,
                                            color: Colors.pink,
                                            size: 35.0,
                                          ),
                                        ]),
                                    shape: new CircleBorder(),

                                    padding: const EdgeInsets.all(15.0),

                                  ),
                                  new Padding(
                                    padding: const EdgeInsets.all(6.0),
                                  ),
                                  new Text(
                                    "Send",
                                    style: new TextStyle(fontSize: 16.0,
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Roboto"),
                                  ),
                                ]),

                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.all(16.0),
                                  ),
                                ]),

                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  new OutlineButton(
                                    onPressed: () {},
                                    borderSide: BorderSide(
                                      color: Colors.white, //Color of the border
                                      style: BorderStyle.solid, //Style of the border
                                      width: 1.2, //width of the border
                                    ),
                                    child:  new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          new Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 35.0,
                                          ),
                                        ]),
                                    shape: new CircleBorder(),

                                    padding: const EdgeInsets.all(15.0),

                                  ),
                                  new Padding(
                                    padding: const EdgeInsets.all(6.0),
                                  ),
                                  new Text(
                                    "Share",
                                    style: new TextStyle(fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Roboto"),
                                  ),
                                ]),


                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Padding(
                                    padding: const EdgeInsets.all(16.0),
                                  ),
                                ]),

                            new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  new OutlineButton(
                                    onPressed: () {},
                                    borderSide: BorderSide(
                                      color: Colors.green, //Color of the border
                                      style: BorderStyle.solid, //Style of the border
                                      width: 1.2, //width of the border
                                    ),
                                    child:  new Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[

                                          new Icon(
                                            Icons.refresh,
                                            color: Colors.green,
                                            size: 35.0,
                                          ),
                                        ]),
                                    shape: new CircleBorder(),

                                    padding: const EdgeInsets.all(15.0),

                                  ),
                                  new Padding(
                                    padding: const EdgeInsets.all(6.0),
                                  ),
                                  new Text(
                                    "Retry",
                                    style: new TextStyle(fontSize: 16.0,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Roboto"),
                                  ),
                                ]),


                          ]),
                    ]

                ),

              ),

              padding: const EdgeInsets.all(0.0),
              alignment: Alignment.center,
              width: 1.7976931348623157e+308,
              height: 590.0,
            ),


          ]),

    );
  }
}