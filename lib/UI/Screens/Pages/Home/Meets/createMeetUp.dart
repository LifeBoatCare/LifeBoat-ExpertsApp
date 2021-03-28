import 'package:flutter/material.dart';

class newGroup extends StatefulWidget {
  @override
  _newGroupState createState() => _newGroupState();
}

class _newGroupState extends State<newGroup> {
  TextEditingController nameController=TextEditingController();
  TextEditingController description=TextEditingController();
  TextEditingController date=TextEditingController();
  TextEditingController time=TextEditingController();
  String dropdownValue='Depression Group';
  List<String> dropdownMenu=['Depression Group','Social Anxiety Group','Loneliness Group'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFF203C60),
        ),
        titleSpacing: 0.0,
        title: Text('New Group',style: TextStyle(color: Color(0xFF203C60))),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert,color: Color(0xFF203C60)),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image(
                    image: new AssetImage('assets/undraw_create_f05x.png'),
                    width: 200,
                    color: Color(0xFFF3F5FA),
                    colorBlendMode: BlendMode.darken,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xFFCFD1D4))
                      ),
                      color: Colors.white,
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: null));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Color(0xFF203C60),),
                          Text('Browse',style: TextStyle(color: Color(0xFF203C60),),)
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            Container(
              margin: EdgeInsets.fromLTRB(13, 13, 13, 7),
              color: Colors.white,
              width: 342,
              height: 353,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child:Padding(
                      padding: EdgeInsets.only(left: 20,top: 20,right: 10),
                      child: TextField(
                        controller: nameController,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: Color(0xFF555555),
                            ),
                            suffixIcon: Icon(Icons.circle,color: Color(0xFF555555),)
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 20,
                    endIndent: 20,)),
                  Container(
                    child:Padding(
                      padding: EdgeInsets.only(left: 20,right: 10),
                      child: TextField(
                        controller: description,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Description',
                            hintStyle: TextStyle(color: Color(0xFF555555),),
                            suffixIcon: Icon(Icons.link,color: Color(0xFF555555),)
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 20,
                    endIndent: 20,)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: DropdownButton(
                      value: dropdownValue,
                      hint: Text('Catergory',style: TextStyle(color: Color(0xFF555555),),),
                      icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xFF555555),),
                      isExpanded: true,
                      underline: SizedBox(),
                      onChanged: (value){
                        setState(() {
                          dropdownValue=value;
                        });
                      },
                      items: dropdownMenu.map((e){
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 20,
                    endIndent: 20,)),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                            controller: date,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Date',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              ),
                            ),
                          ),
                        ),
                      Container(
                        width: 190,
                        child: Padding(
                          padding: EdgeInsets.only(left: 90),
                          child: TextField(
                            controller: time,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Time',
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FlatButton(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(3, 30, 25, 20),
                      child: Container(
                        height: 44,
                        width: 135,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Center(
                          child: Text('Confirm Group',
                            style: TextStyle(color: Color(0xFF203C60)),
                          ),
                        ),
                      ),
                    ),
                    onPressed: (){
                      nameController.clear();
                      description.clear();
                      date.clear();
                      time.clear();
                        //dropdownValue='Category';

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF3F5FA),
    );
  }
}
