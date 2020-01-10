import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'util.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body:
        new ListView(
            children: <Widget>[

              new PostWidget(username: "snoop", likeCount: "420", description: "5 hours ago, getting blazed",),
              new PostWidget(username: "harambe", likeCount: "69",description: "10 hours ago, just chilling",),

        ]),

      );
    }
  }