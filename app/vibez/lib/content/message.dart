import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../main.dart';

/// Message Widget ///

class MessageWidget extends StatelessWidget {

  final String username;
  final String description;
  final IconData icon;
  final Color color;
  final String timestamp;
  final String imgUrl;

  MessageWidget({
    String username, description, icon, color, timestamp, imgUrl
  })
      : this.username = username,
        this.description = description,
        this.icon = icon,
        this.color = color,
        this.timestamp = timestamp,
        this.imgUrl = imgUrl;



  @override
  Widget build(BuildContext context) {
    return new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(5.0),
          ),

          new Image.network(
            imgUrl,
            fit: BoxFit.fill,
            width: 70.0,
            height: 70.0,
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
                        username,
                        style: new TextStyle(fontSize: 20.0,
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
                  description,
                  style: new TextStyle(fontSize: 16.0,
                      color: color,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),

              ]),


          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 40.0),
                ),

                new Text(
                  timestamp,
                  style: new TextStyle(fontSize: 10.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Roboto"),
                ),
              ]),
          new Icon(
              icon,
              color: color,
              size: 40.0),
        ]

    );
  }
}