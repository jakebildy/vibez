import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibez/models/user.dart';
import 'package:vibez/models/userdata.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:vibez/services/auth.dart';

class SettingsWidget extends StatelessWidget {

 final AuthService _auth = AuthService();

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
                      color: Colors.green,
                      size: 30.0,
                    ),
                      new Text(
                        "My Profile",
                        style: new TextStyle(fontSize: 20.0,
                            color:  Colors.white,
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
                                "Username: ",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Roboto"),
                              ),

                              new Text(
                                userData.displayName,
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
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
                                "Email: ",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Roboto"),
                              ),

                              new Text(
                                Provider.of<User>(context).email,
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
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
                                "Bio: ",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Roboto"),
                              ),

                              new Text(
                                userData.description,
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
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
                      color: Colors.pinkAccent,
                      size: 30.0,
                    ),
                    new Text(
                      "Account Settings",
                      style: new TextStyle(fontSize: 20.0,
                          color:  Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),
                  ]),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Text(
                "I am an...",
                style: new TextStyle(fontSize: 20.0,
                    color:  Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"),
              ),
              new Padding(
                padding: const EdgeInsets.all(15.0),
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
                              style: userData.userType == "Artist" ? BorderStyle.solid : BorderStyle.none, //Style of the border
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
                            "Artist",
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
                              style: userData.userType == "User" ? BorderStyle.solid : BorderStyle.none, //Style of the border
                              width: 1.2, //width of the border
                            ),
                            child:  new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  new Icon(
                                    Icons.person,
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
                            "User",
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

                            },
                            borderSide: BorderSide(
                              color: Colors.green, //Color of the border
                              style: userData.userType == "Establishment" ? BorderStyle.solid : BorderStyle.none, //Style of the border
                              width: 1.2, //width of the border
                            ),
                            child:  new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  new Icon(
                                    Icons.local_bar,
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
                            "Establishment",
                            style: new TextStyle(fontSize: 16.0,
                                color: Colors.green,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Roboto"),
                          ),
                        ]),


                  ]),

              new Padding(
                padding: const EdgeInsets.all(35.0),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Icon(
                      Icons.settings,
                      color: Colors.orange,
                      size: 30.0,
                    ),
                    new Text(
                      "Account Actions",
                      style: new TextStyle(fontSize: 20.0,
                          color:  Colors.white,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[


                        new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[


                              new MaterialButton(onPressed: () async {

                                print("Signing out...");
                                await _auth.signOut();
                                Navigator.pop(context,true);
                              },
                              child: new Text(
                                " Log Out",
                                style: new TextStyle(fontSize: 18.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Roboto"),
                              )),
                            ]),

                      ])),




            ]));
  }}
