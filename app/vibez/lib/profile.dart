import 'package:flutter/material.dart';
import 'vibez_icons.dart';

class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              new Card(key: null,
    child:
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),

                    new Text(
                      "@jake",
                      style: new TextStyle(fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new Icon(
                        Icons.verified_user,
                        color: const Color(0xFF2cb3fb),
                        size: 21.0),
                    new Padding(
                      padding: const EdgeInsets.all(24.0),
                    ),
                  ]

              )),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),

                    new Image.network(
                      'https://i.imgur.com/0O7yjDV.png',
                      fit: BoxFit.fill,
                      width: 100.0,
                      height: 100.0,
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
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Followers",
                            style: new TextStyle(fontSize: 12.0,
                                color: const Color(0xFF000000),
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
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Following",
                            style: new TextStyle(fontSize: 12.0,
                                color: const Color(0xFF000000),
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
                padding: const EdgeInsets.all(6),
              ),
              new Text(
                "Jake Bildy",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),

              new Text(
                "Bios are for people who need an explanation",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

              new Padding(
                padding: const EdgeInsets.all(8.1),
              ),

              new Text(
                "Top 9",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w300,
                    fontFamily: "Roboto"),
              ),
    new Card(key: null,
    child:
    new Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://static.stereogum.com/uploads/2015/03/tame-impala_let-it-happen-360x360.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/c/c9/Phil_Collins_InTheAirTonight.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/e/e1/93tilinfinity.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Sgt._Pepper%27s_Lonely_Hearts_Club_Band.jpg/220px-Sgt._Pepper%27s_Lonely_Hearts_Club_Band.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/2/27/IllmaticNas.jpg/220px-IllmaticNas.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://mm.aiircdn.com/5/5ba3db1f638a5.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://consequenceofsound.net/wp-content/uploads/2019/08/Metallica-Black-Album.jpg?quality=80&w=807',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://art.pixilart.com/2b9b2310a92619b.png',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Tha-doggfather.jpg/220px-Tha-doggfather.jpg',
                      fit: BoxFit.fill,
                      width: 134.4,
                      height: 134.4,
                    )
                  ]

              ),

            ]

        ))]));
  }}
