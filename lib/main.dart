import 'package:firstapp/DocumentScan.dart';
import 'package:firstapp/Profile.dart';
import 'package:flutter/material.dart';

import 'ListWidget.dart';

void main() => runApp(MyApp());
List<Widget> childrens = new List<Widget>();

class MyApp extends StatefulWidget {
  MyApp() {
    generateWidgets();
  }

  void generateWidgets() {
    childrens.add(ListWidget());
    childrens.add(DocumentScan());
    childrens.add(Profile());
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  Widget getChildren(int index) {
    return childrens[index];
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Title'),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomAppBar(
              child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                title: (Text('Home')),
                icon: new Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  title: (Text('Doc')), icon: new Icon(Icons.picture_as_pdf)),
              BottomNavigationBarItem(
                  title: (Text('Profile')), icon: new Icon(Icons.person)),
            ],
          )),
          body: getChildren(currentIndex),
        ),
      ),
    );
  }
}
