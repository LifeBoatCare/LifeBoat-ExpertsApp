import 'package:flutter/material.dart';
import 'package:lb/UI/Screens/Pages/Self Help/Read/readForm.dart';
import 'package:lb/UI/Screens/Pages/Self Help/Videos/videoForm.dart';
class selfHelp extends StatefulWidget {
  @override
  _selfHelpState createState() => _selfHelpState();
}

class _selfHelpState extends State<selfHelp> {

  List<Widget> tabs=[
    readForm(),
    videoForm()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text("Self-Help",style: TextStyle(color: Color(0xFF203C60)),),
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
              Tab(text: "BOOKS/ARTICLES",),
              Tab(text: "VIDEOS",)
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(children: tabs,),
      ),
    );
  }
}
