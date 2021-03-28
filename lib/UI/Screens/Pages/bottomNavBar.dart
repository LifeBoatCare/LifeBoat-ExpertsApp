import 'package:flutter/material.dart';
import 'package:lb/UI/Screens/Pages/Home/basePage.dart';
import 'package:lb/UI/Screens/Pages/Self Help/basePage.dart';
import 'package:lb/UI/Screens/Pages/More/more.dart';

class bottomNavBar extends StatefulWidget {
  @override
  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int _currentIndex=0;
  bool _navbarvisible=false;
  final tabs=[
    home(),
    selfHelp(),
    more()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
      showUnselectedLabels: false,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text("Self Help"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("More"),
          ),
        ],
      onTap: (index){
        setState((){
          _currentIndex=index;
          _navbarvisible=index!=2?true:false;
        });
      },
      unselectedItemColor: Color(0xFFC1DAE8),
      selectedItemColor: Color(0xFF203C60),
        ),
    );
  }
}
