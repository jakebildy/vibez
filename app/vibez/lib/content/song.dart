import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../main.dart';

/// Song Widget ///

class SongWidget extends StatelessWidget {

  final String name;
  final String author;
  final IconData icon;
  final Color color;
  final String album;
  final String imgUrl;

  SongWidget({
    String name, author, icon, color, album, imgUrl
  })
      : this.name = name,
        this.author = author,
        this.icon = icon,
        this.color = color,
        this.album = album,
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
                        name,
                        style: new TextStyle(fontSize: 20.0,
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),


                    ]),
                new Padding(
                  padding: const EdgeInsets.all(3.0),
                ),

    new Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
                new Text(
                  author,
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Roboto"),
                ),
                new Text(
                  " • ",
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Roboto"),
                ),

                new Text(
                  album,
                  style: new TextStyle(fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Roboto"),
                ),
    ]),
              ]),


          new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 20.0),
                ),

              ]),
          new Icon(
              icon,
              color: color,
              size: 40.0),
          new Icon(
              Icons.more_vert,
              color: color,
              size: 40.0),
        ]

    );
  }
}