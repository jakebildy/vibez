import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'post.dart';
import 'util/util.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body:
        new PageView(
            children: <Widget>[

              new PostWidget(username: "jake", likeCount: "420", description: "5 hours ago, at a party", songName: "Make No Sense", artistName: "Young Boy",  hasLiked: false, video: "assets/makenosense.mp4", style: PostStyle.essex),
              new PostWidget(username: "jake", likeCount: "69",description: "10 hours ago, just chilling",songName: "IN THE AIR TONIGHT", artistName: "PHIL COLLINS", hasLiked: true, video: "assets/phil.mp4", style: PostStyle.telegraph),

        ],
          scrollDirection: Axis.vertical,),

      );
    }
  }