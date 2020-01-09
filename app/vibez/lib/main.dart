import 'package:flutter/material.dart';
import 'vibez_icons.dart';
import 'profile.dart';
import 'home.dart';
import 'share.dart';
import 'discover.dart';
import 'activity.dart';
import 'package:badges/badges.dart';

void main() {
  
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Vibez',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: const Color(0xFF00bcd4),
        accentColor: const Color(0xFF00bcd4),
        canvasColor: const Color(0xFFfafafa),
        fontFamily: 'Roboto',
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    DiscoverWidget(),
    ShareWidget(),
    ActivityWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],



                  bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
    // sets the background color of the `BottomNavigationBar`
    canvasColor: Colors.black,
    // sets the active color of the `BottomNavigationBar` if `Brightness` is light
    primaryColor: Colors.white,
    textTheme: Theme
        .of(context)
        .textTheme
        .copyWith(caption: new TextStyle(color: Colors.white))), // sets the inactive color of the `BottomNavigationBar`
    child:  new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: new Text('Home'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.bubble_chart),
              title: new Text('Vibe'),
            ),

            new BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(
                  Vibez.vibe_button,
                  // color: green,
                  size: 40.0,
                ),
              ),
                title: new Text('Share')
            ),

            new BottomNavigationBarItem(
              icon: Badge(
                badgeContent: Text('3', style: TextStyle(color: Colors.white)),
                child: Icon(
                  Vibez.fire_button,
                  // color: green,
                ),
              ),
              title: new Text('Activity'),
            ),

            new BottomNavigationBarItem(
                icon: _currentIndex == 4
                    ? const Icon(Icons.person)
                    : const Icon(Icons.perm_identity),

              title: new Text('Me'),

            )
          ]

      ),

    ),

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.black,
            iconTheme: Theme.of(context).primaryIconTheme.copyWith(
                color: Colors.white

            ),
              actions: <Widget>[
          // action button
          IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
          },
        ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
            },
          ),
              ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0), child:  new Image.network(
            'https://i.imgur.com/lsH8FH9.png',
            fit:BoxFit.fitWidth,
            width: 130.0,
            height: 130.0,
          )),],

            ),
          ),
        ));




      }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

