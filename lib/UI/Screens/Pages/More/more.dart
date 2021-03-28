import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lb/UI/Screens/Pages/bottomNavBar.dart';

class more extends StatefulWidget {
  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr.Pradeshini",style: TextStyle(color: Color(0xFF203C60)),),
        actions: <Widget>[
          Icon(
            Icons.forward,
            color: Color(0xFF203C60),),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              height: 218,
              width: 355,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        new Padding(
                          padding: EdgeInsets.only(left: 10.0,top: 24.0),
                          child: Icon(Icons.person,color: Color(0xFF95BFD7)),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 28.0),
                          child: Text("Edit Profile",),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 14,
                    endIndent: 14,)),
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        new Padding(
                          padding: EdgeInsets.only(left: 10.0,top: 24.0),
                          child: Icon(Icons.calendar_today_sharp,color: Color(0xFFC1DAE8)),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 28.0),
                          child:  Text("Manage Calender"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 14,
                    endIndent: 14,
                  )),
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        new Padding(
                          padding: EdgeInsets.only(left: 10.0,top: 24.0),
                          child: Icon(Icons.rate_review_rounded,color: Color(0xFF95BFD7)),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 28.0),
                          child:  Text("See Review"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 14,
                    endIndent: 14,
                  )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 143,
              width: 355,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        new Padding(
                          padding: EdgeInsets.only(left: 10.0,top: 24.0),
                          child: Icon(Icons.notifications_active,color: Color(0xFFC1DAE8)),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 28.0),
                          child: Text("Notifications"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 14,
                    endIndent: 14,)),
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        new Padding(
                          padding: EdgeInsets.only(left: 10.0,top: 24.0),
                          child: Icon(Icons.settings_sharp,color: Color(0xFF95BFD7)),
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 15.0,top: 28.0),
                          child: Text("Settings"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 14,
                    endIndent: 14,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE5E5E5),
    );
  }
}
