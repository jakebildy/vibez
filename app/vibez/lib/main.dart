import 'package:flutter/material.dart';
import 'package:vibez/services/database.dart';
import 'package:vibez/util/vibez_icons.dart';
import 'package:vibez/screens/profile.dart';
import 'package:vibez/screens/home.dart';
import 'package:vibez/screens/share.dart';
import 'package:vibez/screens/discover.dart';
import 'package:vibez/screens/activity.dart';
import 'package:badges/badges.dart';
import 'package:vibez/content/post.dart';
import 'package:vibez/util/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:vibez/services/auth.dart';
import 'package:vibez/models/user.dart';
import  'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'models/userdata.dart';

void main() {

  runApp(new MyApp());
}


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return StreamProvider<User>.value(
      value: AuthService().user,
      child: StreamProvider<List<UserData>>.value(
        value: DatabaseService().userData,
        child: new MaterialApp(
            title: 'Vibez',
            debugShowCheckedModeBanner: false,
            theme: new ThemeData(
              primarySwatch: Colors.cyan,
              primaryColor: const Color(0xFF00bcd4),
              accentColor: const Color(0xFF00bcd4),
              canvasColor: const Color(0xFF090909),
              fontFamily: 'Roboto',
            ),
            home: new MyHomePage(),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _gemCount = 4;

  int _currentIndex = 0;

  int _vibe = 0;

  PageController _pageController = PageController(initialPage: 0, keepPage: false);

  final List<Widget> _children = [

    HomeWidget(),
    ActivityWidget(),
    ShareWidget(),
    ShareWidget(),
    Wrapper(),
  ];

  @override
  Widget build(BuildContext context) {



    return new Scaffold(
        body: new GestureDetector(

          onHorizontalDragEnd: (DragEndDetails details) => _onHorizontalDrag(details),

          onLongPress: () {
            print("You gave a gem.");
            //onGemGiven();
          },

          child: new PageView(
              controller: _pageController,
              onPageChanged: onPageChanged,
              children: <Widget>[
                _children[0],
                _children[1],
                _children[3],
                _children[4],
              ])),


        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Color(0xff504f54),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          // sets the inactive color of the `BottomNavigationBar`
          child: new BottomNavyBar(
              backgroundColor: Colors.black,
              onItemSelected: onTabTapped,
              selectedIndex: _currentIndex,
              items: [
                new BottomNavyBarItem(
                  activeColor: Colors.pink,
                  icon: Icon(Icons.home, size: 34, color: _currentIndex == 0 ? Colors.pinkAccent : Colors.pinkAccent,),

                  title: new Text('Home'),
                ),

                new BottomNavyBarItem(
                  activeColor: Colors.orange,
                  icon: _currentIndex == 1
                        ? const Icon(Vibez.fire_solid, size: 32, color: Colors.orangeAccent)
                        : const Icon(Vibez.fire_button, size: 32, color: Colors.orangeAccent),
                  title: new Text('Activity'),
                ),



                new BottomNavyBarItem(
                  activeColor: Colors.green,
                  icon:  Icon(Icons.add_circle_outline, size: 34, color: _currentIndex == 2 ? Colors.greenAccent : Colors.greenAccent,),
                  title: new Text('Share'),
                ),

                new BottomNavyBarItem(
                  activeColor: Colors.blue,
                  icon: _currentIndex == 3
                      ? const Icon(Icons.person, size: 34, color: Colors.blueAccent)
                      : const Icon(Icons.perm_identity, size: 34, color: Colors.blueAccent),

                  title: new Text('Me'),

                )
              ]

          ),

        ),

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.black,
            iconTheme: Theme
                .of(context)
                .primaryIconTheme
                .copyWith(
                color: Colors.white

            ),
            actions: <Widget>[
              // action button

//              IconButton(
//                icon: _vibe == 0 ? Icon(Vibez.chill_icon) : _vibe == 1 ?  Icon(Vibez.fire_solid) : _vibe == 2 ?  Icon(Vibez.trippy_icon) : Icon(Icons.local_bar),
//                color:  Colors.white,
//                iconSize: 30,
//                onPressed: () {
//                  onVibeChanged();
//                },
//              ),


              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),

              IconButton(
                icon: Icon(Icons.search),
                iconSize: 34,
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
              ),

              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Badge(
                    badgeColor: Colors.green,
                    badgeContent: Text(
                        '$_gemCount', style: TextStyle(color: Colors.white)),
                    position: BadgePosition.bottomRight(right: -5),
                    child: new Image.network(
                      'https://i.imgur.com/7e317PJ.png',
                      fit: BoxFit.fitWidth,
                      width: 34.0,
                      height: 34.0,
                    )),

              ),


              new Padding(
                padding: const EdgeInsets.all(7.0),
              ),


            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 20.0),
                    child: new Image.network(
                      'https://i.imgur.com/lsH8FH9.png',
                      fit: BoxFit.fitWidth,
                      width: 130.0,
                      height: 130.0,
                    )),
              ],

            ),
          ),
        ));
  }

  void onTabTapped(int index) {


    _pageController.jumpToPage(index);

    setState(() {
      _currentIndex = index;
    });
  }


  void onVibeChanged() {

    setState(() {
      _vibe = (_vibe + 1) %  4;
    });
  }


  void onGemGiven() {
    setState(() {
      if (_gemCount >= 1) {
        _gemCount--;
      }
    });
  }

  void onPageChanged(int page) {
    setState(() {
      this._currentIndex = page;
    });

  }

  void _onHorizontalDrag(DragEndDetails details) {
    if(details.primaryVelocity == 0) return; // user have just tapped on screen (no dragging)

    if (details.primaryVelocity.compareTo(0) == -1) {
      if (_currentIndex < 4) {
        onTabTapped(_currentIndex + 1);
        print('dragged from left');
      }
    }
    else {
      if (_currentIndex > 0) {
        onTabTapped(_currentIndex - 1);
        print('dragged from right');
      }
    }
  }
}


class DataSearch extends SearchDelegate<String>{

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: Colors.black,
      primaryIconTheme: theme.primaryIconTheme,
        textTheme: theme.textTheme.copyWith(title: theme.textTheme.title.copyWith(color: Colors.white))
    );
  }

  final users = [
    "jake",
    "hayden",
    "snoop",
    "chuck_testa",
    "harambe",
    "dumbledore",
    "gandalf",
    "smeagol",
    "legolas",
    "luke_skywalker"
  ];

  final recentUsers = [
    "snoop",
    "harambe"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [IconButton(icon: Icon(Icons.clear, color: Colors.white,size: 30,), onPressed: () {
      query = "";
    }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the right of the app bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            size: 30,
            color: Colors.white,
            progress: transitionAnimation,
        ), onPressed: (){
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return ProfileWidget();

  }

  @override
  Widget buildSuggestions(BuildContext context) {

    final suggestionList = query.isEmpty?recentUsers : users.where((p)=>p.startsWith(query)) .toList();



    return ListView.builder(itemBuilder: (context, index)=>ListTile(

      onTap: () {
        showResults(context);
      },

      leading: Icon(Icons.person, color: Colors.white,),
      title : RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(color: Colors.white, fontWeight : FontWeight.bold, fontSize: 20),
      children: [TextSpan(
        text: suggestionList[index].substring(query.length),
        style: TextStyle(color: Colors.green, fontSize: 20)
      )]
      )
      )),
      itemCount: suggestionList.length,
    );



  }

}
