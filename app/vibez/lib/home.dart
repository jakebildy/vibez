import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'util.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body:
        new PageView(
            children: <Widget>[

              new PostWidget(username: "jake", likeCount: "420", description: "5 hours ago, at a party", songName: "Phil Collins - In The Air Tonight",  hasLiked: true,),
              new PostWidget(username: "jake", likeCount: "69",description: "10 hours ago, just chilling",songName: "Phil Collins - In The Air Tonight", hasLiked: false,),

        ],
          scrollDirection: Axis.vertical,),

      );
    }
  }