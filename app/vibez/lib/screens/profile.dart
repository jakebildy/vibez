import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:vibez/screens/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:vibez/services/database.dart';
import 'package:vibez/models/userdata.dart';

class ProfileWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final UserData userData = Provider.of<List<UserData>>(context)[0];

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
                padding:  const EdgeInsets.all(25.0),
              ),
              new Text(
                userData.userType == "User" ? '' : userData.displayName,
                style: new TextStyle(fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
              new Icon(
                  userData.verified == true && userData.userType == "Establishment" ? Icons.verified_user : userData.userType == "Artist" ? Icons.music_note : null,
                  color:  userData.verified == true ? const Color(0xFF2cb3fb) : Colors.white,
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
                      userData.userType == "User" ? userData.displayName : userData.userType,
                      style: new TextStyle(fontSize:  userData.userType == "User" ? 30 : 23.0,
                          color: Colors.white,
                          fontWeight: userData.userType == "User" ? FontWeight.w800 : FontWeight.w600,
                          fontFamily: "Roboto"),
                    ),
                    new Icon(
                        userData.verified == true && userData.userType == "User" ? Icons.verified_user : null,
                        color:  userData.verified == true ? const Color(0xFF2cb3fb) : Colors.white,
                        size: 30.0),

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
                                  userData.gemsGiven.toString(),
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
                userData.description,
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
                              Icons.music_note,
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
                      "Songs",
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
