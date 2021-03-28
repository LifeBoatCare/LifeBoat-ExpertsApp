import 'package:flutter/material.dart';
import 'package:lb/UI/Screens/Pages/Home/Meets/createMeetUp.dart';
class meets extends StatefulWidget {
  @override
  _meetsState createState() => _meetsState();
}

class _meetsState extends State<meets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              FlatButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>newGroup()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.white,
                padding: EdgeInsets.all(18),
                child: Row(
                  children: [
                    Text('Create Group',style: TextStyle(color: Color(0xFF203C60)),),
                    Padding(
                      padding: EdgeInsets.only(left: 183),
                      child: Icon(Icons.add,color: Color(0xFF203C60),),
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
      ),
      backgroundColor: Color(0xFFF3F5FA),
    );
  }
}
