import 'package:coding_for_child/main_reusable_component.dart';
import 'package:coding_for_child/profilepage.dart';
import 'package:coding_for_child/teachervideopage.dart';
import 'package:coding_for_child/uploadpage.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/material.dart';

class teacherhomepage extends StatefulWidget {
  @override
  _teacherhomepageState createState() => _teacherhomepageState();
}

class _teacherhomepageState extends State<teacherhomepage> {
  @override
  Widget build(BuildContext context) {
    dynamic secnum = ' 16 section';
    dynamic hournum = ' 21 hours';
    dynamic coursename = ' Course name';
    dynamic flaticontwo = Icons.star;
    double flaticontwosize = 20;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xffe0afa0),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 750,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return teacherpost(
                        teaonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => uploadpage(),
                            ),
                          );
                        },
                      );
                    },
                    separatorBuilder:(context, index) {return SizedBox(height:10,);},
                    itemCount: 20,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
