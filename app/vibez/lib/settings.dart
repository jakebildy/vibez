import 'package:flutter/material.dart';
import 'vibez_icons.dart';

class SettingsWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),

              new Card(key: null,
                  color: const Color(0xFF1c1c1c),
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
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
        "<",
        style: new TextStyle(fontSize: 30.0,
            color: Colors.green,
            fontWeight: FontWeight.w800,
            fontFamily: "Roboto"),
      ),
      new Text(
        " Settings",
        style: new TextStyle(fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontFamily: "Roboto"),
      ),
]),

              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),
])),

              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30.0,
                    ),
                      new Text(
                        "My Profile",
                        style: new TextStyle(fontSize: 20.0,
                            color:  Colors.green,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),
                      ),
]),

              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),

              new Card(key: null,
                  color: const Color(0xFF1c1c1c),
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              new Padding(
                                padding: const EdgeInsets.all(10.0),
                              ),

                              new Text(
                                "Username",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"),
                              ),
                            ]),

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ])),



              new Card(key: null,
                  color: const Color(0xFF1c1c1c),
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              new Padding(
                                padding: const EdgeInsets.all(10.0),
                              ),

                              new Text(
                                "Description",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"),
                              ),
                            ]),

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ])),


              new Padding(
                padding: const EdgeInsets.all(15.0),
              ),


              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.account_box,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    new Text(
                      "Account Settings",
                      style: new TextStyle(fontSize: 20.0,
                          color:  Colors.green,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                  ]),


              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),

              new Card(key: null,
                  color: const Color(0xFF1c1c1c),
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              new Padding(
                                padding: const EdgeInsets.all(10.0),
                              ),

                              new Text(
                                " Switch to Artist Account",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"),
                              ),
                            ]),

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ])),

              new Padding(
                padding: const EdgeInsets.all(15.0),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    new Text(
                      "Account Actions",
                      style: new TextStyle(fontSize: 20.0,
                          color:  Colors.green,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                  ]),


              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),

              new Card(key: null,
                  color: const Color(0xFF1c1c1c),
                  child:
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[

                              new Padding(
                                padding: const EdgeInsets.all(10.0),
                              ),

                              new Text(
                                " Log Out",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"),
                              ),
                            ]),

                        new Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ])),




            ]));
  }}
