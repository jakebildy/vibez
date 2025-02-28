import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../main.dart';

/// Broadcast Widget ///

class BroadcastWidget extends StatelessWidget {

  final String username;
  final String description;
  final IconData icon;
  final Color color;
  final String location;
  final String imgUrl;
  final String song;

  BroadcastWidget({
    String username, description, icon, color, location, imgUrl, song
  })
      : this.username = username,
        this.description = description,
        this.icon = icon,
        this.color = color,
        this.location = location,
        this.imgUrl = imgUrl,
        this.song = song;



  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.symmetric(
            vertical: 0.0, horizontal: 20.0),
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              new OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(
                  color: color, //Color of the border
                  style: BorderStyle.solid, //Style of the border
                  width: 2.5, //width of the border
                ),
                child:
                new Image.network(
                  imgUrl,
                  fit: BoxFit.fill,
                  width: 60.0,
                  height: 60.0,
                ),
                shape: new CircleBorder(),

                padding: const EdgeInsets.all(3.0),),
              new Padding(
                padding: const EdgeInsets.all(6.0),
              ),
              new Text(
                username,
                style: new TextStyle(fontSize: 16.0,
                    color: color,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Icon(
          Icons.music_note,
          color: Colors.white,
          size: 21.0),
              new Text(
                song,
                style: new TextStyle(fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),

              ]),
              new Text(
                location,
                style: new TextStyle(fontSize: 12.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"),
              ),

            ]));
  }
}