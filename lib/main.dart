import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = Color(0xFFffffff);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jetlag',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const MyHomePage(title: 'Jetlag'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        toolbarHeight: 120,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color(0xFFf6f9d8),
                Color(0xFF0e3b27),
              ]
              )
          ),
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: SizedBox(
          height: 500.0,
          width: 500,
          child: Image.asset('images/jetlag.jpg'),
        ),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        //lets you scroll
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 2, 12, 2),
            child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
                  child: Image.asset('images/tomLogo.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 10),
                  child: mainTitleText("\nJETLAG-2022 SERENDIPITY: NO WAR"),
                ),
                Text(
                  "The JetLAG-2022 program will be focusing on the anti-war message and a fundraiser, although we wish and hope that Russia's aggression in Ukraine would stop by then. \nWe know that even once it’s over, a more continuous, global and vicious circle of war, violence, repressions, hatred, partitioning, division and displacement, will be still ongoing as it has always been. \nWe, therefore, see it as a time to contemplate the roots of a great tradition of open-air music festivals countering this evil with the wisdom, beauty and boldness of the liberal and transformational arts, striving for freedom, peace and justice, for a better world to come.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20,
                    height: 2.0,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 350.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF000000),
                ),
                child: Center(
                  child: Image.asset('images/regLogo.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note_rounded,
                color: Colors.black,
                size: 80,
              ),
              title: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 145,
                  width: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(

                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 40),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Lineup()),
                        );
                      },
                      child: getText('Lineup'),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Colors.black,
                size: 80,
              ),
              title: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 145,
                  width: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 40),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Map()),
                        );
                      },
                      child: getText('Map'),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                color: Colors.black,
                size: 80,
              ),
              title: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 145,
                  width: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Info()),
                        );
                      },
                      child: getText('Info'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getText(String contents) => Text(
        contents,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40,
        ),
      );

  Widget mainTitleText(String contents) => Text(
        contents,
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 20,
        ),
      );
}

class Lineup extends StatelessWidget {
  const Lineup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2022 Artist Lineup'),
      ),
      body: Scrollbar(
        isAlwaysShown: true,

        //lets you scroll
        child: SingleChildScrollView(
          child: Image.asset('images/bannerCrop.png'),
        ),
      ),
    );
  }
}

class Map extends StatelessWidget {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: "Go Back",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb68df5),
        title: Text('Information'),
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        //lets you scroll
        child: SingleChildScrollView(
          child: Image.asset('images/guide.png'),
        ),
      ),
    );
  }
}
