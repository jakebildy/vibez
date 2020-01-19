import 'package:flutter/material.dart';
import '../vibez_icons.dart';
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

  BroadcastWidget({
    String username, description, icon, color, location, imgUrl
  })
      : this.username = username,
        this.description = description,
        this.icon = icon,
        this.color = color,
        this.location = location,
        this.imgUrl = imgUrl;



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
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
              new Text(
                location,
                style: new TextStyle(fontSize: 16.0,
                    color: color,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Roboto"),
              ),
            ]));
  }
}