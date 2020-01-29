import 'package:flutter/material.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:vibez/content/post.dart';
import 'package:vibez/util/util.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body:
        new PageView(
            children: <Widget>[

              new PostWidget(username: "jake", likeCount: "420", description: "", songName: "Make No Sense", artistName: "Young Boy",  hasLiked: false, video: "assets/makenosense.mp4", style: PostStyle.essex),
              new PostWidget(username: "jake", likeCount: "69",description: "",songName: "IN THE AIR TONIGHT", artistName: "PHIL COLLINS", hasLiked: true, video: "assets/phil.mp4", style: PostStyle.telegraph),
              new PostWidget(username: "jake", likeCount: "69",description: "",songName: "IN THE AIR TONIGHT", artistName: "PHIL COLLINS", hasLiked: false, video: "assets/phil.mp4", style: PostStyle.essex),

        ],
          scrollDirection: Axis.vertical,),

      );
    }
  }