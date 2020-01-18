import 'package:flutter/material.dart';
import 'chat_data.dart';
import 'listWidget.dart';
import 'profile.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> selectedPage= [
    Profile(),
    ListOfChats(chatData: chatData),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.shifting,iconSize: 25,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              title: Text(
                'HowApp',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.teal[800],
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );                     //start working on profile.dart
        },
      ),
      appBar: AppBar(elevation: 20,
        backgroundColor: Colors.teal[800],
        title: Text(
          'HowApp',
          textAlign: TextAlign.left,
        ),
      ),
      body: selectedPage[_currentIndex]


    );
  }
}
