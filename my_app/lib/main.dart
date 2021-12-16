import 'package:flutter/material.dart';
import 'profile.dart';
import 'home.dart';
import 'search.dart';
import 'savedThreads.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Genie';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    SavedThreadsPage(),
    Text(
      'add post',
      style: optionStyle,
    ),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          toolbarHeight: 80.0,
          title: Image.asset('images/genieIcon.png', scale: 4.0),
          backgroundColor: Color.fromRGBO(23, 235, 38, 1)
        )
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(5,5,5,1),
        primaryColor: Color.fromRGBO(5,5,5,1)),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'threads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_photo_alternate_rounded),
            label: 'post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        backgroundColor: Colors.black54,
      ),
      )
    );
  }
}
