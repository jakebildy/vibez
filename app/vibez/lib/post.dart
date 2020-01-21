import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'main.dart';
import 'util/util.dart';


/// Post Widget ///


class PostWidget extends StatefulWidget {


  final String username;
  final String likeCount;
  final String description;
  final String songName;
  final String artistName;
  final bool hasLiked;
  final String video;
  final PostStyle style;

  PostWidget({
    String username, likeCount, description, songName, artistName, hasLiked, video, style
  }): this.username = username, this.likeCount = likeCount, this.description = description, this.songName = songName, this.artistName = artistName, this.hasLiked = hasLiked, this.video = video, this.style = style;



  @override
  _PostWidgetState createState() => _PostWidgetState(username: username, likeCount: likeCount, description: description, songName: songName, artistName: artistName, hasLiked: hasLiked, video: video, style:style);
}

class _PostWidgetState extends State<PostWidget> {

  final String username;
  final String likeCount;
  final String description;
  final String songName;
  final String artistName;
  final bool hasLiked;
  final String video;
  final PostStyle style;

  bool _liked = false;
  bool _donated = false;

  _PostWidgetState({
    String username, likeCount, description, songName, artistName, hasLiked, video, style
  }): this.username = username, this.likeCount = likeCount, this.description = description, this.songName = songName, this.artistName = artistName, this.hasLiked = hasLiked, this.video = video, this.style = style, this._liked = hasLiked;





  @override
  Widget build(BuildContext context){



    return new GestureDetector(

    onDoubleTap: () {
    print("You liked this.");
    setState(() {
      _liked = !_liked;
    });

    },

    onLongPress: () {
      setState(() {
        _donated = !_donated;
      });

    },

    child: new Container(
      child: new Card(key: null,
        color:  const Color(0xFF000000),
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(5.0),
                    ),

                    new Image.network(
                      'https://i.imgur.com/Kgs0tRE.png',
                      fit: BoxFit.fill,
                      width: 40.0,
                      height: 40.0,
                    ),

                    new Padding(
                      padding: const EdgeInsets.all(4.0),
                    ),
                    new Text(
                      username,
                      style: new TextStyle(fontSize:17.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontFamily: "Roboto"),
                    ),



                    new Icon(
                        Icons.verified_user,
                        color: const Color(0xFF2cb3fb),
                        size: 23.0),
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    ),
                    new Text(
                      description,
                      style: new TextStyle(fontSize:17.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ]

              ),
        Stack(
            children: <Widget>[
              new VideoPlayerScreen(video: video),
              new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    new Padding(
                      padding: const EdgeInsets.all(110.0),
                    ),
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AnimatedOpacity(
                            // If the widget is visible, animate to 0.0 (invisible).
                            // If the widget is hidden, animate to 1.0 (fully visible).
                            opacity: _donated ? 0.0 : 1.0,
                            duration: Duration(milliseconds: 700),
                              child: new Image.network(
                                _donated ? 'https://i.imgur.com/7e317PJ.png' : '',
                                      fit: BoxFit.fitWidth,
                                      width: 140.0,
                                      height: 140.0,
                                    ),
                          ),
                          ])
              ]),
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    new Padding(
                      padding: const EdgeInsets.all(110.0),
                    ),

                    AnimatedOpacity(
                      // If the widget is visible, animate to 0.0 (invisible).
                      // If the widget is hidden, animate to 1.0 (fully visible).
                        opacity: _liked ? 0.0 : 1.0,
                        duration: Duration(milliseconds: 700),
                        child:
                    new Icon(
                        _liked ? Vibez.fire_solid : null,
                        color: Colors.orange,
                        size: 120.0),
                    ),
              new Padding(
                padding: const EdgeInsets.all(60.0),
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    new Text(
                      songName,
                      style: new TextStyle(fontSize: style==PostStyle.telegraph ? 25.0 : 60.0,
                          color: Colors.white,
                          fontFamily: style==PostStyle.telegraph ? "Flowers" : "Bombing"
                      ),
                    ),

                  ]),
              new Padding(
                padding: style==PostStyle.telegraph ? const EdgeInsets.all(14.0) : const EdgeInsets.all(0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      artistName,
                      style: new TextStyle(fontSize: style==PostStyle.telegraph ? 20.0 : 30,
                          color: const Color(0xFFFFFFFF),
                          fontFamily: style==PostStyle.telegraph ? "Flowers" : "Whoa"
                      ),
                    ),

                  ]),
                  ]),

                ]),
              new Padding(
                padding: const EdgeInsets.all(5.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30.0),
                    ),
                    new Icon(
                        _liked ? Vibez.fire_solid : Vibez.fire_button,
                        color: _liked ? Colors.orange : Colors.white,
                        size: 30.0),

                    new Text(
                      _liked ? " " + (int.parse(likeCount)+1).toString() + " " : " " + likeCount + " "  ,
                      style: new TextStyle(fontSize:24.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto"),
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal:55.0),
                    ),
                    new Icon(
                        Icons.save_alt,
                        color: Colors.white,
                        size: 30.0),
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                    ),
                    new Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30.0),
                  ]

              ),

            ]

        ),

      ),

      padding: const EdgeInsets.all(0.0),
      alignment: Alignment.center,
      width: 1.7976931348623157e+308,
      height: 690.0,
          ));
  }


}


/// Account Menu ///
class AccountMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            );
  }
}

class Constants {
  static const String FirstItem = 'Sign Out';
  static const String SecondItem = 'Send Feedback';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('I First Item');
  } else if (choice == Constants.SecondItem) {
    print('I Second Item');
  }
}

class VideoPlayerScreen extends StatefulWidget {

  final String video;

  VideoPlayerScreen({
    String video
  }): this.video = video;



  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState(video: video);
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  final String video;

  _VideoPlayerScreenState({
    String video
  }): this.video = video;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(
        video,
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: 0.69,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: SpinKitThreeBounce(color: Colors.pinkAccent, size: 40));
          }
        },
      );
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          // Wrap the play or pause in a call to `setState`. This ensures the
//          // correct icon is shown.
//          setState(() {
//            // If the video is playing, pause it.
//            if (_controller.value.isPlaying) {
//              _controller.pause();
//            } else {
//              // If the video is paused, play it.
//              _controller.play();
//            }
//          });
//        },
//        // Display the correct icon depending on the state of the player.
//        child: Icon(
//          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//        ),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
  }
}



