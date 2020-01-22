import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'settings.dart';
import 'package:flutter/cupertino.dart';

class ProfileWidget extends StatelessWidget {

  final String username;

  ProfileWidget({
    String username
  }): this.username = username;



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[




              Stack(
                  children: <Widget>[
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              new Image.network(
                'https://i.imgur.com/lOIRifZ.png',
                fit: BoxFit.fill,
                width: 411.0,
                height: 280.0,
              ),]),
    new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[


    new Padding(
    padding: const EdgeInsets.symmetric(vertical: 95.0),
    ),

    new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              new Text(
                username,
                style: new TextStyle(fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
              new Icon(
                  Icons.verified_user,
                  color: const Color(0xFF2cb3fb),
                  size: 30.0),
              ]),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(20.0),
                    ),
                    new Text(
                      "Artist",
                      style: new TextStyle(fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"),
                    ),


                  ])])]),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Text(
                "London, ON  🇨🇦",
                style: new TextStyle(fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),

                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Image.network(
                                  'https://i.imgur.com/7e317PJ.png',
                                  fit:BoxFit.fitWidth,
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                new Text(
                                  "190",
                                  style: new TextStyle(fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto"),
                                ),
                              ]),
                          new Text(
                            "Given",
                            style: new TextStyle(fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                          )
                        ]

                    ),

                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "1200",
                            style: new TextStyle(fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Followers",
                            style: new TextStyle(fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                          )
                        ]

                    ),
                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "900",
                            style: new TextStyle(fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Following",
                            style: new TextStyle(fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                          ),

                        ]

                    ),

                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),

                  ]

              ),

              new Padding(
                padding: const EdgeInsets.all(14.0),
              ),
              new Text(
                "Bios are for people who need an explanation",
                style: new TextStyle(fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"),
              ),

              new Padding(
                padding: const EdgeInsets.all(16.0),
              ),

              new Padding(
                padding: const EdgeInsets.all(5.0),
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
                              Icons.edit,
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
                      "Edit Profile",
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
                    Icons.graphic_eq,
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
            "Broadcast",
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
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => SettingsWidget()),
              );
            },
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
                    Icons.settings,
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
            "Settings",
            style: new TextStyle(fontSize: 16.0,
                color: Colors.green,
                fontWeight: FontWeight.w800,
                fontFamily: "Roboto"),
          ),
        ]),


                  ]),


            ]));
  }}
