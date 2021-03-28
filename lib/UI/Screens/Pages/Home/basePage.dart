import 'package:flutter/material.dart';
import 'package:lb/UI/Screens/Pages/Home/Chats/chatList.dart';
import 'package:lb/UI/Screens/Pages/Home/Meets/meetList.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<Widget> tabs=[
    chats(),
    meets()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text("LifeBoat",style: TextStyle(color: Color(0xFF203C60)),),
           ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert,color: Color(0xFF203C60),),
            ),
          ],
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0),
                insets: EdgeInsets.symmetric(horizontal:20.0)
            ),
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            tabs: <Widget>[
              Tab(text: "CHATS",),
              Tab(text: "MEETS",)
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(children: tabs,),
      ),
    );
  }
}
