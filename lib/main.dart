//Created by Dan Leykin for JetLAG Music Festival


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = Color(0xFFffffff);
int index = 0;

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
        //transparent but figure out how to remove
        iconTheme: IconThemeData(color: Color(0x00b68df5)),
        toolbarHeight: 87,
        flexibleSpace: Container(
          child: Image.asset('images/jetlag.jpg'),
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('images/regLogo.jpg'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.queue_music,
                    color: Colors.black,
                    size: 80,
                  ),
                  SizedBox(
                    height: 155,
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Lineup()),
                        );
                      },
                      child: getText('Lineup'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.map_sharp,
                    color: Colors.black,
                    size: 80,
                  ),
                  SizedBox(
                    height: 155,
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Map()),
                        );
                      },
                      child: getText('Map'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.question_mark_rounded,
                    color: Colors.black,
                    size: 80,
                  ),
                  SizedBox(
                    height: 155,
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info()),
                        );
                      },
                      child: getText('Info'),
                    ),
                  ),
                ],
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
          fontSize: 50,
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
        backgroundColor: Color(0xff252732),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '2022 Artist Lineup',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/spellart.jpg",
          ))),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/central.jpg",
          ))),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/pangea.jpg",
          ))),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                index = 0;
              },
              child: StageText("SPELLART"),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                index = 0;
              },
              child: StageText("SPELLART"),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                index = 0;
              },
              child: StageText("SPELLART"),
            ),
          ),
        ),
      ],
    );
  }

  Widget StageText(String contents) => Text(
        contents,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      );
}

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48887a),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Festival Map',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        //lets you scroll
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(10.0),
          minScale: 0.1,
          maxScale: 1.6,
          child: Center(
            child: Image.asset('images/map.png'),
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
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Information',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
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
