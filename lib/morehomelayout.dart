import 'package:coding_for_child/aboutus.dart';
import 'package:coding_for_child/chat_system.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:flutter/material.dart';

class morelayout extends StatefulWidget {

  @override
  State<morelayout> createState() => _morelayoutState();
}

class _morelayoutState extends State<morelayout> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(alignment: Alignment.center,
        width: double.infinity,
        color: Color(0xffe0afa0),
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profilepage(),
                    ),
                  );}, child:Container(width: double.infinity, height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(15.0),
                        child:Text('Profile',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
                        ))
                  ), ),
                  SizedBox(height: 10,),
                  FlatButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => aboutus(),
                    ),
                  );}, child:Container(width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child:Padding(
                          padding: EdgeInsets.all(15.0),
                          child:Text('About Us',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
                          ))
                  ), ),
                  SizedBox(height: 10,),
                  FlatButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => chating(),
                    ),
                  );}, child:Container(width: double.infinity,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child:Padding(
                          padding: EdgeInsets.all(15.0),
                          child:Text('Massege',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),
                          ))
                  ), ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
