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
    Size screenSize = MediaQuery.of(context).size;
    double hei = screenSize.height;
    double bannerHei = hei * 0.2;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: bannerHei,
        //transparent but figure out how to remove
        backgroundColor: Color(0xFFFF0F00),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/jetlag.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[mainScreen(), navButtons()],
      ),
    );
  }

  Widget getText(String contents) => Text(
        contents,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 65,
        ),
      );

  Widget mainScreen() {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        //lets you scroll
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 2, 12, 2),
            child: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: Image.asset('images/tomLogo.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 15),
                  child: Center(
                    child: Text(
                      "JETLAG-2022 SERENDIPITY: \nNO WAR",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Text(
                  "The JetLAG-2022 program will be focusing on the anti-war message and a fundraiser, although we wish and hope that Russia's aggression in Ukraine would stop by then. \nWe know that even once it’s over, a more continuous, global and vicious circle of war, violence, repressions, hatred, partitioning, division and displacement, will be still ongoing as it has always been. \nWe, therefore, see it as a time to contemplate the roots of a great tradition of open-air music festivals countering this evil with the wisdom, beauty and boldness of the liberal and transformational arts, striving for freedom, peace and justice, for a better world to come.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 20,
                    height: 2.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Made by Dan Leykin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget navButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.map_sharp,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  navButtonText('Map'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lineup()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.queue_music_sharp,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  navButtonText('Lineup'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff252732),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Info()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.question_mark_sharp,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  navButtonText('Info'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget navButtonText(String contents) => Text(
        contents,
        style: TextStyle(
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 18,
        ),
      );
}

class Lineup extends StatefulWidget {
  const Lineup({Key? key}) : super(key: key);

  @override
  State<Lineup> createState() => _LineupState();
}

class _LineupState extends State<Lineup> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double hei = screenSize.height;
    double bannerHei = hei * 0.1;
    return Scaffold(
      backgroundColor: Color(0xff489082),
      appBar: AppBar(
        toolbarHeight: bannerHei,
        backgroundColor: Color(0xff252732),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '2022 Artist Lineup',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[_stackedContainers(), _navigationButtons()],
      ),
    );
  }

  Widget _stackedContainers() {
    Size screenSize = MediaQuery.of(context).size;
    double wid = screenSize.width;
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Scrollbar(
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(0),
                minScale: 0.1,
                maxScale: 1.6,
                child: Container(
                  child: SizedBox(
                    width: wid,
                    child: Image.asset(
                      'images/spellart.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Scrollbar(
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(0),
                minScale: 0.1,
                maxScale: 1.6,
                child: Container(
                  child: SizedBox(
                    width: wid,
                    child: Image.asset(
                      'images/central.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Scrollbar(
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(0),
                minScale: 0.1,
                maxScale: 1.6,
                child: Container(
                  child: SizedBox(
                    width: wid,
                    child: Image.asset(
                      'images/pangea.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: StageText("SPELLART"),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff252732),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: StageText("CENTRAL"),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff252732),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: StageText("PANGEA"),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget StageText(String contents) => Text(
        contents,
        style: TextStyle(
          fontFamily: 'Nunito',
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
    Size screenSize = MediaQuery.of(context).size;
    double hei = screenSize.height;
    double wid = screenSize.width;
    double bannerHei = hei * 0.1;
    return Scaffold(
      backgroundColor: Color(0xff48887a),
      appBar: AppBar(
        toolbarHeight: bannerHei,
        backgroundColor: Color(0xff223a3a),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Festival Map',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        //lets you scroll
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(0),
          minScale: 0.1,
          maxScale: 1.6,
          child: Container(
            child: SizedBox(
              width: wid,
              child: Image.asset(
                'images/Map.png',
                fit: BoxFit.contain,
              ),
            ),
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
    Size screenSize = MediaQuery.of(context).size;
    double hei = screenSize.height;
    double wid = screenSize.width;
    double bannerHei = hei * 0.1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: bannerHei,
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
      body: Container(
        child: Center(
          child: Scrollbar(
            isAlwaysShown: true,
            //lets you scroll
            child: SingleChildScrollView(
              child: Container(
                child: SizedBox(
                  width: wid,
                  child: Image.asset(
                    'images/guide.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
