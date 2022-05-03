import 'package:coding_for_child/main_reusable_component.dart';
import 'package:coding_for_child/videopage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class liberaryscreen extends StatefulWidget {
  @override
  State<liberaryscreen> createState() => _liberaryscreenState();
}

class _liberaryscreenState extends State<liberaryscreen> {
  dynamic secnum = ' 16 section';
  dynamic hournum = ' 21 hours';
  dynamic coursename = ' Course name';
  dynamic flaticontwo = Icons.star;
  double flaticontwosize = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
                    height: double.maxFinite,
                    child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return coursepost(
                        libonpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => vedeopage(),
                            ),
                          );
                        },
                      );
                    },
                      separatorBuilder:(context, index) {return SizedBox(height: 7.5,);},
                    itemCount: 20,
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
