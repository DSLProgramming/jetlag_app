import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jetlag',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(12, 2, 12, 2),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: Image.asset('images/clearlogo.png.png'),
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
                fontWeight: FontWeight.w300,
                color: Colors.black,
                fontSize: 20,
                height: 2.0,
              ),
            ),
          ]),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Image.asset('images/clearlogo.png.png'),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note_rounded,
                color: Colors.black,
                size: 50,
              ),
              title: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Lineup()),
                    );
                  },
                  child: getText('Lineup'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt_rounded,
                color: Colors.black,
                size: 50,
              ),
              title: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tickets()),
                    );
                  },
                  child: getText('Tickets'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: Colors.black,
                size: 50,
              ),
              title: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Map()),
                        );
                      },
                      child: getText('Map'),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark_rounded,
                color: Colors.black,
                size: 50,
              ),
              title: Align(
                alignment: Alignment.centerLeft,
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

    );
  }
}

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket'),
      ),
      body:
      Scrollbar(
      isAlwaysShown: true,
    //lets you scroll
    child: SingleChildScrollView(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    ),
      ),
    );
  }
}

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
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
        title: const Text('Infomation'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
