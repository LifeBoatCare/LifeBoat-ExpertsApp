import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 30,
                margin: EdgeInsets.fromLTRB(12, 13, 12, 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFFF3F5FA)
                ),
                child: FlatButton(
                  onPressed: null,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.search,color: Color(0xFF203C60),),
                      ),
                      Text('Search',style: TextStyle(color: Color(0xFF203C60),),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Messages'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFF3F5FA),
    );
  }
}
