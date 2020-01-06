import 'package:flutter/material.dart';
import 'vibez_icons.dart';

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
    FeedWidget(),
    FeedWidget(),
    ProfileWidget(),
    ProfileWidget(),
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
        onTap: onTabTapped,
        currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: new Text('Home'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.bubble_chart),
              title: new Text('Discover'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Vibez.vibe_button),
              title: new Text('Share'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Vibez.fire_button),
              title: new Text('Favorites'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.perm_identity),
              title: new Text('Me'),

            )
          ]

      ),

    ),

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: Theme.of(context).primaryIconTheme.copyWith(
                color: Colors.black

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
            'https://i.imgur.com/VeP70w1.png',
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

class FeedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Icon(
                    Icons.camera,
                    color: const Color(0xFF000000),
                    size: 77.0),

                new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "Person Name",
                        style: new TextStyle(fontSize:15.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      ),

                      new Text(
                        "This is the description",
                        style: new TextStyle(fontSize:15.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),

                      new Text(
                        "🇨🇦  London, ON",
                        style: new TextStyle(fontSize:15.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      ),

                      new Text(
                        "🎶In The Air Tonight - Phil Collins",
                        style: new TextStyle(fontSize:14.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w200,
                            fontFamily: "Roboto"),
                      )
                    ]

                )
              ]

          )
        ]

    );

  }
}



class ProfileWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              new Padding(
                padding: const EdgeInsets.all(23.0),
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),

                    new Text(
                      "@jake",
                      style: new TextStyle(fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new Icon(
                        Icons.verified_user,
                        color: const Color(0xFF00a5b4),
                        size: 21.0)
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[


                    new Padding(
                      padding: const EdgeInsets.all(24.0),
                    ),

                    new Image.network(
                      'https://i.imgur.com/0O7yjDV.png',
                      fit: BoxFit.fill,
                      width: 100.0,
                      height: 100.0,
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "1200",
                            style: new TextStyle(fontSize: 20.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Followers",
                            style: new TextStyle(fontSize: 12.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                          )
                        ]

                    ),
                    new Padding(
                      padding: const EdgeInsets.all(14.0),
                    ),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            "900",
                            style: new TextStyle(fontSize: 20.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),

                          new Text(
                            "Following",
                            style: new TextStyle(fontSize: 12.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w200,
                                fontFamily: "Roboto"),
                          )
                        ]

                    ),

                    new Padding(
                      padding: const EdgeInsets.all(24.0),
                    )
                  ]

              ),

              new Padding(
                padding: const EdgeInsets.all(6),
              ),
              new Text(
                "Jake Bildy • London, ON 🇨🇦 ",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),

              new Text(
                "Bios are for people who need an explanation",
                style: new TextStyle(fontSize: 16.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

        new Padding(
          padding: const EdgeInsets.all(23.1),
        ),

        new Text(
          "Top 9",
          style: new TextStyle(fontSize: 16.0,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w300,
              fontFamily: "Roboto"),
        ),

        new Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black,width: 3.0),
            ),
          ),
        ),




              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://static.stereogum.com/uploads/2015/03/tame-impala_let-it-happen-360x360.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/c/c9/Phil_Collins_InTheAirTonight.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/e/e1/93tilinfinity.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/5/50/Sgt._Pepper%27s_Lonely_Hearts_Club_Band.jpg/220px-Sgt._Pepper%27s_Lonely_Hearts_Club_Band.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    ),

                    new Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/2/27/IllmaticNas.jpg/220px-IllmaticNas.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    ),

                    new Image.network(
                      'https://mm.aiircdn.com/5/5ba3db1f638a5.jpg',
                      fit: BoxFit.fill,
                      width: 136.5,
                      height: 136.5,
                    )
                  ]

              ),

        new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.network(
                'https://consequenceofsound.net/wp-content/uploads/2019/08/Metallica-Black-Album.jpg?quality=80&w=807',
                fit: BoxFit.fill,
                width: 136.5,
                height: 136.5,
              ),

              new Image.network(
                'https://art.pixilart.com/2b9b2310a92619b.png',
                fit: BoxFit.fill,
                width: 136.5,
                height: 136.5,
              ),

              new Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Tha-doggfather.jpg/220px-Tha-doggfather.jpg',
                fit: BoxFit.fill,
                width: 136.5,
                height: 136.5,
              )
            ]

        ),
            ]

        ));
  }}
