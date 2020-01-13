import 'package:flutter/material.dart';
import 'vibez_icons.dart';

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



              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              new Image.network(
                'https://i.imgur.com/Kgs0tRE.png',
                fit: BoxFit.fill,
                width: 100.0,
                height: 100.0,
              ),]),
        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                username,
                style: new TextStyle(fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),
              new Icon(
                  Icons.verified_user,
                  color: const Color(0xFF2cb3fb),
                  size: 21.0),
              ]),
              new Padding(
                padding: const EdgeInsets.all(3.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Text(
                      " London, ON  🇨🇦",
                      style: new TextStyle(fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),
                  ]),
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
                padding: const EdgeInsets.all(10.0),
              ),
              new Text(
                "Bios are for people who need an explanation",
                style: new TextStyle(fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"),
              ),

              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),

              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    new RawMaterialButton(
                      onPressed: () {},
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

                            new Text("Broadcast",  style: new TextStyle(fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),)

                          ]),
                      shape: new CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.black38,
                      padding: const EdgeInsets.all(15.0),
                    ),


                    new RawMaterialButton(
                      onPressed: () {},
                      child:  new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            new Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 35.0,
                            ),

                            new Text("Edit Profile",
                              style: new TextStyle(fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),)

                          ]),
                      shape: new CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.black38,
                      padding: const EdgeInsets.all(15.0),
                    ),


                    new RawMaterialButton(
                      onPressed: () {},
                      child:  new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

               new Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 35.0,
                      ),

                new Text("More",
                  style: new TextStyle(fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),)

    ]),
                      shape: new CircleBorder(),
                      elevation: 2.0,
                      fillColor: Colors.black38,
                      padding: const EdgeInsets.all(15.0),
                    ),


                  ]),


              new Padding(
                padding: const EdgeInsets.all(16),
              ),

              new Padding(
                padding: const EdgeInsets.all(8.1),
              ),


            ]));
  }}
