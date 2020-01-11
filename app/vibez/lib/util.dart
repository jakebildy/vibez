import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// Post Widget ///

class PostWidget extends StatelessWidget {

  final String username;
  final String likeCount;
  final String description;
  final String songName;

  PostWidget({
    String username, likeCount, description, songName
  }): this.username = username, this.likeCount = likeCount, this.description = description, this.songName = songName;




  @override
  Widget build(BuildContext context){
    return new Container(
      child:
      new Card(key: null,
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
                          fontWeight: FontWeight.w400,
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
              new VideoPlayerScreen(),
              new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
              ),

              new Padding(
                padding: const EdgeInsets.all(255.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    ),
                    new Text(
                      songName,
                      style: new TextStyle(fontSize:20.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),

                  ]),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(24.0),
                    ),

                    new Icon(
                        Vibez.fire_solid,
                        color: Colors.orange,
                        size: 26.0),
                    new Icon(
                        Vibez.trippy_icon,
                        color: Colors.green,
                        size: 27.0),
                    new Icon(
                        Vibez.chill_icon,
                        color: Colors.lightBlueAccent,
                        size: 27.0),
                    new Text(
                      " " + likeCount + " ",
                      style: new TextStyle(fontSize:20.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    ),
                    new Text(
                      "people liked this",
                      style: new TextStyle(fontSize:20.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    )
                  ]

              ),

                  ]),

                ])
            ]

        ),

      ),

      padding: const EdgeInsets.all(0.0),
      alignment: Alignment.center,
      width: 1.7976931348623157e+308,
      height: 690.0,
    );
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
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create an store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(
      'assets/phil.mp4',
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
              aspectRatio: 0.63,
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



