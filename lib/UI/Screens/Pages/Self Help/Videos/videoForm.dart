import 'package:flutter/material.dart';

class videoForm extends StatefulWidget {
  @override
  _videoFormState createState() => _videoFormState();
}

class _videoFormState extends State<videoForm> {
  TextEditingController nameController=TextEditingController();
  TextEditingController linkController=TextEditingController();

  String dropdownValue='Depression';
  List<String> dropdownMenu=['Depression','PTSD','Anxiety'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 330,
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
                            hintText: 'Name of the Video',
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
                        controller: linkController,
                        maxLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Link for Reference',
                            hintStyle: TextStyle(color: Color(0xFF555555),),
                            suffixIcon: Icon(Icons.link,color: Color(0xFF555555),)
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Divider(
                    indent: 20,
                    endIndent: 20,)),
                  FlatButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Text('PDF File',style: TextStyle(color: Color(0xFF555555),),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 215),
                          child: Icon(Icons.attach_file,color: Color(0xFF555555),),
                        )
                      ],
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
                          child: Text('Send Suggestions',
                            style: TextStyle(color: Color(0xFF203C60)),
                          ),
                        ),
                      ),
                    ),
                    onPressed: (){
                      nameController.clear();
                      linkController.clear();
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
